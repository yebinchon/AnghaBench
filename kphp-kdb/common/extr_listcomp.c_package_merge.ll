; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_package_merge.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_package_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_list_entry = type { i64, i32, %struct.ccp_list_entry*, %struct.ccp_list_entry*, %struct.ccp_list_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ccp_list_entry* (%struct.ccp_list_entry*, %struct.ccp_list_entry*)* @package_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ccp_list_entry* @package_merge(%struct.ccp_list_entry* %0, %struct.ccp_list_entry* %1) #0 {
  %3 = alloca %struct.ccp_list_entry*, align 8
  %4 = alloca %struct.ccp_list_entry*, align 8
  %5 = alloca %struct.ccp_list_entry*, align 8
  %6 = alloca %struct.ccp_list_entry*, align 8
  %7 = alloca %struct.ccp_list_entry*, align 8
  %8 = alloca %struct.ccp_list_entry*, align 8
  %9 = alloca %struct.ccp_list_entry*, align 8
  store %struct.ccp_list_entry* %0, %struct.ccp_list_entry** %4, align 8
  store %struct.ccp_list_entry* %1, %struct.ccp_list_entry** %5, align 8
  store %struct.ccp_list_entry* null, %struct.ccp_list_entry** %6, align 8
  store %struct.ccp_list_entry* null, %struct.ccp_list_entry** %7, align 8
  br label %10

10:                                               ; preds = %50, %2
  %11 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %4, align 8
  %12 = icmp ne %struct.ccp_list_entry* %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %4, align 8
  %15 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %14, i32 0, i32 2
  %16 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %15, align 8
  %17 = icmp eq %struct.ccp_list_entry* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %51

19:                                               ; preds = %13
  %20 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %4, align 8
  %21 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %20, i32 0, i32 2
  %22 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %21, align 8
  store %struct.ccp_list_entry* %22, %struct.ccp_list_entry** %8, align 8
  %23 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %4, align 8
  %24 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %8, align 8
  %27 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = call %struct.ccp_list_entry* @new_ccp_list_entry(i64 %29)
  store %struct.ccp_list_entry* %30, %struct.ccp_list_entry** %9, align 8
  %31 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %9, align 8
  %32 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %31, i32 0, i32 1
  store i32 -1, i32* %32, align 8
  %33 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %4, align 8
  %34 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %9, align 8
  %35 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %34, i32 0, i32 4
  store %struct.ccp_list_entry* %33, %struct.ccp_list_entry** %35, align 8
  %36 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %8, align 8
  %37 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %9, align 8
  %38 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %37, i32 0, i32 3
  store %struct.ccp_list_entry* %36, %struct.ccp_list_entry** %38, align 8
  %39 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %8, align 8
  %40 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %39, i32 0, i32 2
  %41 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %40, align 8
  store %struct.ccp_list_entry* %41, %struct.ccp_list_entry** %4, align 8
  %42 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %6, align 8
  %43 = icmp eq %struct.ccp_list_entry* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %19
  %45 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %9, align 8
  store %struct.ccp_list_entry* %45, %struct.ccp_list_entry** %7, align 8
  store %struct.ccp_list_entry* %45, %struct.ccp_list_entry** %6, align 8
  br label %50

46:                                               ; preds = %19
  %47 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %9, align 8
  %48 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %7, align 8
  %49 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %48, i32 0, i32 2
  store %struct.ccp_list_entry* %47, %struct.ccp_list_entry** %49, align 8
  store %struct.ccp_list_entry* %47, %struct.ccp_list_entry** %7, align 8
  br label %50

50:                                               ; preds = %46, %44
  br label %10

51:                                               ; preds = %18, %10
  %52 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %6, align 8
  store %struct.ccp_list_entry* %52, %struct.ccp_list_entry** %4, align 8
  store %struct.ccp_list_entry* null, %struct.ccp_list_entry** %7, align 8
  store %struct.ccp_list_entry* null, %struct.ccp_list_entry** %6, align 8
  br label %53

53:                                               ; preds = %95, %51
  %54 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %4, align 8
  %55 = icmp ne %struct.ccp_list_entry* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %5, align 8
  %58 = icmp ne %struct.ccp_list_entry* %57, null
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ false, %53 ], [ %58, %56 ]
  br i1 %60, label %61, label %96

61:                                               ; preds = %59
  %62 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %4, align 8
  %63 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %5, align 8
  %66 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sle i64 %64, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %61
  %70 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %6, align 8
  %71 = icmp eq %struct.ccp_list_entry* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %4, align 8
  store %struct.ccp_list_entry* %73, %struct.ccp_list_entry** %7, align 8
  store %struct.ccp_list_entry* %73, %struct.ccp_list_entry** %6, align 8
  br label %78

74:                                               ; preds = %69
  %75 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %4, align 8
  %76 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %7, align 8
  %77 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %76, i32 0, i32 2
  store %struct.ccp_list_entry* %75, %struct.ccp_list_entry** %77, align 8
  store %struct.ccp_list_entry* %75, %struct.ccp_list_entry** %7, align 8
  br label %78

78:                                               ; preds = %74, %72
  %79 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %4, align 8
  %80 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %79, i32 0, i32 2
  %81 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %80, align 8
  store %struct.ccp_list_entry* %81, %struct.ccp_list_entry** %4, align 8
  br label %95

82:                                               ; preds = %61
  %83 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %6, align 8
  %84 = icmp eq %struct.ccp_list_entry* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %5, align 8
  store %struct.ccp_list_entry* %86, %struct.ccp_list_entry** %7, align 8
  store %struct.ccp_list_entry* %86, %struct.ccp_list_entry** %6, align 8
  br label %91

87:                                               ; preds = %82
  %88 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %5, align 8
  %89 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %7, align 8
  %90 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %89, i32 0, i32 2
  store %struct.ccp_list_entry* %88, %struct.ccp_list_entry** %90, align 8
  store %struct.ccp_list_entry* %88, %struct.ccp_list_entry** %7, align 8
  br label %91

91:                                               ; preds = %87, %85
  %92 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %5, align 8
  %93 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %92, i32 0, i32 2
  %94 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %93, align 8
  store %struct.ccp_list_entry* %94, %struct.ccp_list_entry** %5, align 8
  br label %95

95:                                               ; preds = %91, %78
  br label %53

96:                                               ; preds = %59
  %97 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %5, align 8
  %98 = icmp ne %struct.ccp_list_entry* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %5, align 8
  store %struct.ccp_list_entry* %100, %struct.ccp_list_entry** %4, align 8
  br label %101

101:                                              ; preds = %99, %96
  %102 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %6, align 8
  %103 = icmp eq %struct.ccp_list_entry* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %4, align 8
  store %struct.ccp_list_entry* %105, %struct.ccp_list_entry** %3, align 8
  br label %111

106:                                              ; preds = %101
  %107 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %4, align 8
  %108 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %7, align 8
  %109 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %108, i32 0, i32 2
  store %struct.ccp_list_entry* %107, %struct.ccp_list_entry** %109, align 8
  %110 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %6, align 8
  store %struct.ccp_list_entry* %110, %struct.ccp_list_entry** %3, align 8
  br label %111

111:                                              ; preds = %106, %104
  %112 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %3, align 8
  ret %struct.ccp_list_entry* %112
}

declare dso_local %struct.ccp_list_entry* @new_ccp_list_entry(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
