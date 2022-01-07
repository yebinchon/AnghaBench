; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xpatience.c_walk_common_sequence.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xpatience.c_walk_common_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32, i32, i32, i32 }
%struct.entry = type { i32, i32, %struct.entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hashmap*, %struct.entry*, i32, i32, i32, i32)* @walk_common_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_common_sequence(%struct.hashmap* %0, %struct.entry* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hashmap*, align 8
  %9 = alloca %struct.entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.hashmap, align 4
  store %struct.hashmap* %0, %struct.hashmap** %8, align 8
  store %struct.entry* %1, %struct.entry** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %15, align 4
  br label %25

25:                                               ; preds = %156, %6
  %26 = load %struct.entry*, %struct.entry** %9, align 8
  %27 = icmp ne %struct.entry* %26, null
  br i1 %27, label %28, label %59

28:                                               ; preds = %25
  %29 = load %struct.entry*, %struct.entry** %9, align 8
  %30 = getelementptr inbounds %struct.entry, %struct.entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %16, align 4
  %32 = load %struct.entry*, %struct.entry** %9, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  br label %35

35:                                               ; preds = %53, %28
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* %17, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call i64 @match(%struct.hashmap* %44, i32 %46, i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %43, %39, %35
  %52 = phi i1 [ false, %39 ], [ false, %35 ], [ %50, %43 ]
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %17, align 4
  br label %35

58:                                               ; preds = %51
  br label %62

59:                                               ; preds = %25
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %59, %58
  br label %63

63:                                               ; preds = %79, %62
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i64 @match(%struct.hashmap* %72, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br label %77

77:                                               ; preds = %71, %67, %63
  %78 = phi i1 [ false, %67 ], [ false, %63 ], [ %76, %71 ]
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %63

84:                                               ; preds = %77
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %118

92:                                               ; preds = %88, %84
  %93 = call i32 @memset(%struct.hashmap* %18, i32 0, i32 16)
  %94 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %95 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %98 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %101 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %104 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call i64 @patience_diff(i32 %96, i32 %99, i32 %102, i32 %105, i32 %106, i32 %109, i32 %110, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %92
  store i32 -1, i32* %7, align 4
  br label %168

117:                                              ; preds = %92
  br label %118

118:                                              ; preds = %117, %88
  %119 = load %struct.entry*, %struct.entry** %9, align 8
  %120 = icmp ne %struct.entry* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  br label %168

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %152, %122
  %124 = load %struct.entry*, %struct.entry** %9, align 8
  %125 = getelementptr inbounds %struct.entry, %struct.entry* %124, i32 0, i32 2
  %126 = load %struct.entry*, %struct.entry** %125, align 8
  %127 = icmp ne %struct.entry* %126, null
  br i1 %127, label %128, label %150

128:                                              ; preds = %123
  %129 = load %struct.entry*, %struct.entry** %9, align 8
  %130 = getelementptr inbounds %struct.entry, %struct.entry* %129, i32 0, i32 2
  %131 = load %struct.entry*, %struct.entry** %130, align 8
  %132 = getelementptr inbounds %struct.entry, %struct.entry* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.entry*, %struct.entry** %9, align 8
  %135 = getelementptr inbounds %struct.entry, %struct.entry* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  %138 = icmp eq i32 %133, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %128
  %140 = load %struct.entry*, %struct.entry** %9, align 8
  %141 = getelementptr inbounds %struct.entry, %struct.entry* %140, i32 0, i32 2
  %142 = load %struct.entry*, %struct.entry** %141, align 8
  %143 = getelementptr inbounds %struct.entry, %struct.entry* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.entry*, %struct.entry** %9, align 8
  %146 = getelementptr inbounds %struct.entry, %struct.entry* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  %149 = icmp eq i32 %144, %148
  br label %150

150:                                              ; preds = %139, %128, %123
  %151 = phi i1 [ false, %128 ], [ false, %123 ], [ %149, %139 ]
  br i1 %151, label %152, label %156

152:                                              ; preds = %150
  %153 = load %struct.entry*, %struct.entry** %9, align 8
  %154 = getelementptr inbounds %struct.entry, %struct.entry* %153, i32 0, i32 2
  %155 = load %struct.entry*, %struct.entry** %154, align 8
  store %struct.entry* %155, %struct.entry** %9, align 8
  br label %123

156:                                              ; preds = %150
  %157 = load %struct.entry*, %struct.entry** %9, align 8
  %158 = getelementptr inbounds %struct.entry, %struct.entry* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  %161 = load %struct.entry*, %struct.entry** %9, align 8
  %162 = getelementptr inbounds %struct.entry, %struct.entry* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  %165 = load %struct.entry*, %struct.entry** %9, align 8
  %166 = getelementptr inbounds %struct.entry, %struct.entry* %165, i32 0, i32 2
  %167 = load %struct.entry*, %struct.entry** %166, align 8
  store %struct.entry* %167, %struct.entry** %9, align 8
  br label %25

168:                                              ; preds = %121, %116
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local i64 @match(%struct.hashmap*, i32, i32) #1

declare dso_local i32 @memset(%struct.hashmap*, i32, i32) #1

declare dso_local i64 @patience_diff(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
