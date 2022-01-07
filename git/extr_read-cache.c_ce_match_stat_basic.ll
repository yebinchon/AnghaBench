; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_ce_match_stat_basic.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_ce_match_stat_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.stat = type { i32 }

@CE_REMOVE = common dso_local global i32 0, align 4
@MODE_CHANGED = common dso_local global i32 0, align 4
@DATA_CHANGED = common dso_local global i32 0, align 4
@TYPE_CHANGED = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@trust_executable_bit = common dso_local global i32 0, align 4
@has_symlinks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unsupported ce_mode: %o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, %struct.stat*)* @ce_match_stat_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce_match_stat_basic(%struct.cache_entry* %0, %struct.stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %8 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CE_REMOVE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @MODE_CHANGED, align 4
  %15 = load i32, i32* @DATA_CHANGED, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @TYPE_CHANGED, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %127

19:                                               ; preds = %2
  %20 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %21 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @S_IFMT, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %96 [
    i32 128, label %25
    i32 129, label %55
    i32 130, label %75
  ]

25:                                               ; preds = %19
  %26 = load %struct.stat*, %struct.stat** %5, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @S_ISREG(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @TYPE_CHANGED, align 4
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @trust_executable_bit, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.stat*, %struct.stat** %5, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %43, %46
  %48 = and i32 64, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load i32, i32* @MODE_CHANGED, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %40, %34
  br label %101

55:                                               ; preds = %19
  %56 = load %struct.stat*, %struct.stat** %5, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @S_ISLNK(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @has_symlinks, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load %struct.stat*, %struct.stat** %5, align 8
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @S_ISREG(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64, %61
  %71 = load i32, i32* @TYPE_CHANGED, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %64, %55
  br label %101

75:                                               ; preds = %19
  %76 = load %struct.stat*, %struct.stat** %5, align 8
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @S_ISDIR(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @TYPE_CHANGED, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %94

85:                                               ; preds = %75
  %86 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %87 = call i32 @ce_compare_gitlink(%struct.cache_entry* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @DATA_CHANGED, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %81
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %127

96:                                               ; preds = %19
  %97 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %98 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @BUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %96, %74, %54
  %102 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %103 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %102, i32 0, i32 3
  %104 = load %struct.stat*, %struct.stat** %5, align 8
  %105 = call i32 @match_stat_data(%struct.TYPE_4__* %103, %struct.stat* %104)
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  %108 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %109 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %101
  %114 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %115 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @is_empty_blob_sha1(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* @DATA_CHANGED, align 4
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %120, %113
  br label %125

125:                                              ; preds = %124, %101
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %94, %13
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @ce_compare_gitlink(%struct.cache_entry*) #1

declare dso_local i32 @BUG(i8*, i32) #1

declare dso_local i32 @match_stat_data(%struct.TYPE_4__*, %struct.stat*) #1

declare dso_local i32 @is_empty_blob_sha1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
