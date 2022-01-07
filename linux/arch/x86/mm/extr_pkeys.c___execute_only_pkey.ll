; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pkeys.c___execute_only_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pkeys.c___execute_only_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@current = common dso_local global i32 0, align 4
@PKEY_DISABLE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__execute_only_pkey(%struct.mm_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %15 = call i32 @mm_pkey_alloc(%struct.mm_struct* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %51

19:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = call i32 (...) @read_pkru()
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @__pkru_allows_read(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %51

30:                                               ; preds = %23, %20
  %31 = load i32, i32* @current, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PKEY_DISABLE_ACCESS, align 4
  %34 = call i32 @arch_set_user_pkey_access(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @mm_set_pkey_free(%struct.mm_struct* %38, i32 %39)
  store i32 -1, i32* %2, align 4
  br label %51

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %47 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %37, %28, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @mm_pkey_alloc(%struct.mm_struct*) #1

declare dso_local i32 @__pkru_allows_read(i32, i32) #1

declare dso_local i32 @read_pkru(...) #1

declare dso_local i32 @arch_set_user_pkey_access(i32, i32, i32) #1

declare dso_local i32 @mm_set_pkey_free(%struct.mm_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
