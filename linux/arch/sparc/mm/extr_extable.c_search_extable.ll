; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_extable.c_search_extable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_extable.c_search_extable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.exception_table_entry* @search_extable(%struct.exception_table_entry* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.exception_table_entry*, align 8
  %5 = alloca %struct.exception_table_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.exception_table_entry* %0, %struct.exception_table_entry** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %49, %3
  %10 = load i32, i32* %8, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %9
  %15 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %15, i64 %17
  %19 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %49

25:                                               ; preds = %14
  %26 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %26, i64 %28
  %30 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %49

34:                                               ; preds = %25
  %35 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %35, i64 %37
  %39 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %44, i64 %46
  store %struct.exception_table_entry* %47, %struct.exception_table_entry** %4, align 8
  br label %99

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %33, %22
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %9

52:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %95, %52
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %56, 1
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %53
  %60 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %60, i64 %62
  %64 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %95

68:                                               ; preds = %59
  %69 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %69, i64 %71
  %73 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp ule i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %68
  %78 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %78, i64 %81
  %83 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %77
  %88 = load %struct.exception_table_entry*, %struct.exception_table_entry** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %88, i64 %90
  store %struct.exception_table_entry* %91, %struct.exception_table_entry** %4, align 8
  br label %99

92:                                               ; preds = %77, %68
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %92, %67
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %53

98:                                               ; preds = %53
  store %struct.exception_table_entry* null, %struct.exception_table_entry** %4, align 8
  br label %99

99:                                               ; preds = %98, %87, %43
  %100 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  ret %struct.exception_table_entry* %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
