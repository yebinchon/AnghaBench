; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_pmb.c_pmb_mapping_exists.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_pmb.c_pmb_mapping_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmb_entry = type { i64, i64, i64, %struct.pmb_entry* }

@pmb_rwlock = common dso_local global i32 0, align 4
@pmb_entry_list = common dso_local global %struct.pmb_entry* null, align 8
@pmb_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @pmb_mapping_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmb_mapping_exists(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pmb_entry*, align 8
  %10 = alloca %struct.pmb_entry*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = call i32 @read_lock(i32* @pmb_rwlock)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %97, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.pmb_entry*, %struct.pmb_entry** @pmb_entry_list, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.pmb_entry* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %100

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @pmb_map, align 4
  %21 = call i32 @test_bit(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %97

24:                                               ; preds = %18
  %25 = load %struct.pmb_entry*, %struct.pmb_entry** @pmb_entry_list, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %25, i64 %27
  store %struct.pmb_entry* %28, %struct.pmb_entry** %9, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.pmb_entry*, %struct.pmb_entry** %9, align 8
  %31 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %24
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.pmb_entry*, %struct.pmb_entry** %9, align 8
  %37 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.pmb_entry*, %struct.pmb_entry** %9, align 8
  %40 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %38, %41
  %43 = icmp uge i64 %35, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34, %24
  br label %97

45:                                               ; preds = %34
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.pmb_entry*, %struct.pmb_entry** %9, align 8
  %48 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.pmb_entry*, %struct.pmb_entry** %9, align 8
  %54 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.pmb_entry*, %struct.pmb_entry** %9, align 8
  %57 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %55, %58
  %60 = icmp uge i64 %52, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51, %45
  br label %97

62:                                               ; preds = %51
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.pmb_entry*, %struct.pmb_entry** %9, align 8
  %65 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ule i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 @read_unlock(i32* @pmb_rwlock)
  store i32 1, i32* %4, align 4
  br label %102

70:                                               ; preds = %62
  %71 = load %struct.pmb_entry*, %struct.pmb_entry** %9, align 8
  %72 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %11, align 8
  %74 = load %struct.pmb_entry*, %struct.pmb_entry** %9, align 8
  %75 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %74, i32 0, i32 3
  %76 = load %struct.pmb_entry*, %struct.pmb_entry** %75, align 8
  store %struct.pmb_entry* %76, %struct.pmb_entry** %10, align 8
  br label %77

77:                                               ; preds = %86, %70
  %78 = load %struct.pmb_entry*, %struct.pmb_entry** %10, align 8
  %79 = icmp ne %struct.pmb_entry* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.pmb_entry*, %struct.pmb_entry** %10, align 8
  %82 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %11, align 8
  br label %86

86:                                               ; preds = %80
  %87 = load %struct.pmb_entry*, %struct.pmb_entry** %10, align 8
  %88 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %87, i32 0, i32 3
  %89 = load %struct.pmb_entry*, %struct.pmb_entry** %88, align 8
  store %struct.pmb_entry* %89, %struct.pmb_entry** %10, align 8
  br label %77

90:                                               ; preds = %77
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ule i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @read_unlock(i32* @pmb_rwlock)
  store i32 1, i32* %4, align 4
  br label %102

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %61, %44, %23
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %13

100:                                              ; preds = %13
  %101 = call i32 @read_unlock(i32* @pmb_rwlock)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %94, %68
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.pmb_entry*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
