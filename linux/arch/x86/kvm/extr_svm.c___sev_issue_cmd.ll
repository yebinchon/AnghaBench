; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c___sev_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c___sev_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32*)* @__sev_issue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sev_issue_cmd(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fd, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fd, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @fdget(i32 %13)
  %15 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = bitcast %struct.fd* %10 to i8*
  %17 = bitcast %struct.fd* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EBADF, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %35

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @sev_issue_cmd_external_user(i32 %26, i32 %27, i8* %28, i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fdput(i32 %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %24, %21
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sev_issue_cmd_external_user(i32, i32, i8*, i32*) #1

declare dso_local i32 @fdput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
