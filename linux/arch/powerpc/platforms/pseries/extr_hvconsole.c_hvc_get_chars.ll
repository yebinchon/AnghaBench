; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hvconsole.c_hvc_get_chars.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hvconsole.c_hvc_get_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@H_GET_TERM_CHAR = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hvc_get_chars(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i64*
  store i64* %18, i64** %11, align 8
  %19 = load i32, i32* @H_GET_TERM_CHAR, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @plpar_hcall(i32 %19, i64* %16, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = getelementptr inbounds i64, i64* %16, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @be64_to_cpu(i64 %23)
  %25 = load i64*, i64** %11, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %24, i64* %26, align 8
  %27 = getelementptr inbounds i64, i64* %16, i64 2
  %28 = load i64, i64* %27, align 16
  %29 = call i64 @be64_to_cpu(i64 %28)
  %30 = load i64*, i64** %11, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @H_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %3
  %36 = getelementptr inbounds i64, i64* %16, i64 0
  %37 = load i64, i64* %36, align 16
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %40

39:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @plpar_hcall(i32, i64*, i32) #2

declare dso_local i64 @be64_to_cpu(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
