; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pgtable.c_pgd_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pgtable.c_pgd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32* }

@MAX_PREALLOCATED_USER_PMDS = common dso_local global i32 0, align 4
@MAX_PREALLOCATED_PMDS = common dso_local global i32 0, align 4
@PREALLOCATED_PMDS = common dso_local global i32 0, align 4
@PREALLOCATED_USER_PMDS = common dso_local global i32 0, align 4
@pgd_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pgd_alloc(%struct.mm_struct* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %9 = load i32, i32* @MAX_PREALLOCATED_USER_PMDS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32*, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @MAX_PREALLOCATED_PMDS, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i32*, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = call i32* (...) @_pgd_alloc()
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %64

20:                                               ; preds = %1
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %25 = load i32, i32* @PREALLOCATED_PMDS, align 4
  %26 = call i64 @preallocate_pmds(%struct.mm_struct* %24, i32** %15, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %61

29:                                               ; preds = %20
  %30 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %31 = load i32, i32* @PREALLOCATED_USER_PMDS, align 4
  %32 = call i64 @preallocate_pmds(%struct.mm_struct* %30, i32** %12, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %57

35:                                               ; preds = %29
  %36 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %37 = call i64 @paravirt_pgd_alloc(%struct.mm_struct* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %53

40:                                               ; preds = %35
  %41 = call i32 @spin_lock(i32* @pgd_lock)
  %42 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @pgd_ctor(%struct.mm_struct* %42, i32* %43)
  %45 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @pgd_prepopulate_pmd(%struct.mm_struct* %45, i32* %46, i32** %15)
  %48 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @pgd_prepopulate_user_pmd(%struct.mm_struct* %48, i32* %49, i32** %12)
  %51 = call i32 @spin_unlock(i32* @pgd_lock)
  %52 = load i32*, i32** %4, align 8
  store i32* %52, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %65

53:                                               ; preds = %39
  %54 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %55 = load i32, i32* @PREALLOCATED_USER_PMDS, align 4
  %56 = call i32 @free_pmds(%struct.mm_struct* %54, i32** %12, i32 %55)
  br label %57

57:                                               ; preds = %53, %34
  %58 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %59 = load i32, i32* @PREALLOCATED_PMDS, align 4
  %60 = call i32 @free_pmds(%struct.mm_struct* %58, i32** %15, i32 %59)
  br label %61

61:                                               ; preds = %57, %28
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @_pgd_free(i32* %62)
  br label %64

64:                                               ; preds = %61, %19
  store i32* null, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %40
  %66 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32*, i32** %2, align 8
  ret i32* %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @_pgd_alloc(...) #2

declare dso_local i64 @preallocate_pmds(%struct.mm_struct*, i32**, i32) #2

declare dso_local i64 @paravirt_pgd_alloc(%struct.mm_struct*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @pgd_ctor(%struct.mm_struct*, i32*) #2

declare dso_local i32 @pgd_prepopulate_pmd(%struct.mm_struct*, i32*, i32**) #2

declare dso_local i32 @pgd_prepopulate_user_pmd(%struct.mm_struct*, i32*, i32**) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @free_pmds(%struct.mm_struct*, i32**, i32) #2

declare dso_local i32 @_pgd_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
