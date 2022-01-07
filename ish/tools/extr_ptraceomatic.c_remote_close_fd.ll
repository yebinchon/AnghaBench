; ModuleID = '/home/carl/AnghaBench/ish/tools/extr_ptraceomatic.c_remote_close_fd.c'
source_filename = "/home/carl/AnghaBench/ish/tools/extr_ptraceomatic.c_remote_close_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_regs_struct = type { i64, i32, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"remote close fd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @remote_close_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_close_fd(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.user_regs_struct, align 8
  %8 = alloca %struct.user_regs_struct, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @getregs(i32 %9, %struct.user_regs_struct* %7)
  %11 = bitcast %struct.user_regs_struct* %8 to i8*
  %12 = bitcast %struct.user_regs_struct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %8, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %8, i32 0, i32 1
  store i32 6, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %8, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @setregs(i32 %18, %struct.user_regs_struct* %8)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @step(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @getregs(i32 %22, %struct.user_regs_struct* %8)
  %24 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %8, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %8, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* @errno, align 4
  %32 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @exit(i32 1) #4
  unreachable

34:                                               ; preds = %3
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @setregs(i32 %35, %struct.user_regs_struct* %8)
  ret void
}

declare dso_local i32 @getregs(i32, %struct.user_regs_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setregs(i32, %struct.user_regs_struct*) #1

declare dso_local i32 @step(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
