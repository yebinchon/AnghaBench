; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_paravirt.c_paravirt_patch_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_paravirt.c_paravirt_patch_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i32, i64 }

@.str = private unnamed_addr constant [48 x i8] c"paravirt: Failed to patch indirect CALL at %ps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i32)* @paravirt_patch_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @paravirt_patch_call(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.branch*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 5, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.branch*
  store %struct.branch* %13, %struct.branch** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, 5
  %18 = sub i64 %15, %17
  store i64 %18, i64* %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ult i32 %19, 5
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32 @BUG_ON(i32 1)
  br label %26

26:                                               ; preds = %21, %4
  %27 = load %struct.branch*, %struct.branch** %10, align 8
  %28 = getelementptr inbounds %struct.branch, %struct.branch* %27, i32 0, i32 0
  store i32 232, i32* %28, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.branch*, %struct.branch** %10, align 8
  %31 = getelementptr inbounds %struct.branch, %struct.branch* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = call i32 @BUILD_BUG_ON(i32 1)
  ret i32 5
}

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
