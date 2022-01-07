; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i64, i32 }

@now = common dso_local global i32 0, align 4
@NODE_TYPE_PLUS = common dso_local global i32 0, align 4
@NODE_TYPE_UNSURE = common dso_local global i32 0, align 4
@NODE_TYPE_SURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @store(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.item*, align 8
  %19 = alloca %struct.item*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load i32, i32* %12, align 4
  %24 = icmp sle i32 %23, 255
  br label %25

25:                                               ; preds = %22, %8
  %26 = phi i1 [ false, %8 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %14, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %14, align 4
  %33 = icmp sle i32 %32, 1048576
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi i1 [ false, %25 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %17, align 4
  %39 = icmp sge i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %17, align 4
  %42 = icmp sle i32 %41, 3
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i1 [ false, %34 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @now, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* %16, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %144

54:                                               ; preds = %50, %43
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = call %struct.item* @preload_key(i32 %55, i32* %56, i32 0)
  store %struct.item* %57, %struct.item** %18, align 8
  %58 = load %struct.item*, %struct.item** %18, align 8
  %59 = getelementptr inbounds %struct.item, %struct.item* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, -3
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 3
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.item*, %struct.item** %18, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @delay_op(%struct.item* %66, i32 %67, i8* %68)
  store i32 1, i32* %9, align 4
  br label %144

70:                                               ; preds = %62, %54
  %71 = load %struct.item*, %struct.item** %18, align 8
  %72 = getelementptr inbounds %struct.item, %struct.item* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  %76 = load %struct.item*, %struct.item** %18, align 8
  %77 = getelementptr inbounds %struct.item, %struct.item* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = load i32, i32* %17, align 4
  %82 = and i32 %81, 2
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 0, i32* %9, align 4
  br label %144

85:                                               ; preds = %80
  %86 = load %struct.item*, %struct.item** %18, align 8
  %87 = call i32 @delete_time(%struct.item* %86)
  %88 = load %struct.item*, %struct.item** %18, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @change_value(%struct.item* %88, i32 %89, i32* %90)
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.item*, %struct.item** %18, align 8
  %94 = getelementptr inbounds %struct.item, %struct.item* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.item*, %struct.item** %18, align 8
  %96 = call i32 @insert_time(%struct.item* %95)
  store i32 1, i32* %9, align 4
  br label %144

97:                                               ; preds = %75, %70
  %98 = load i32, i32* %17, align 4
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store i32 0, i32* %9, align 4
  br label %144

102:                                              ; preds = %97
  %103 = load %struct.item*, %struct.item** %18, align 8
  %104 = call i32 @delete_time(%struct.item* %103)
  %105 = load %struct.item*, %struct.item** %18, align 8
  %106 = getelementptr inbounds %struct.item, %struct.item* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %102
  %110 = load %struct.item*, %struct.item** %18, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i32*, i32** %15, align 8
  %113 = call i32 @change_value(%struct.item* %110, i32 %111, i32* %112)
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.item*, %struct.item** %18, align 8
  %116 = getelementptr inbounds %struct.item, %struct.item* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.item*, %struct.item** %18, align 8
  %118 = call i32 @insert_time(%struct.item* %117)
  store i32 1, i32* %9, align 4
  br label %144

119:                                              ; preds = %102
  %120 = load i32, i32* %12, align 4
  %121 = load i32*, i32** %13, align 8
  %122 = load i32, i32* @NODE_TYPE_PLUS, align 4
  %123 = load %struct.item*, %struct.item** %18, align 8
  %124 = getelementptr inbounds %struct.item, %struct.item* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, -3
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* @NODE_TYPE_UNSURE, align 4
  br label %131

129:                                              ; preds = %119
  %130 = load i32, i32* @NODE_TYPE_SURE, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  %133 = or i32 %122, %132
  %134 = call %struct.item* @alloc_item(i32 %120, i32* %121, i32 %133, i32 0)
  store %struct.item* %134, %struct.item** %19, align 8
  %135 = load %struct.item*, %struct.item** %19, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load i32*, i32** %15, align 8
  %138 = call i32 @change_value(%struct.item* %135, i32 %136, i32* %137)
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.item*, %struct.item** %19, align 8
  %141 = getelementptr inbounds %struct.item, %struct.item* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.item*, %struct.item** %19, align 8
  %143 = call i32 @insert_time(%struct.item* %142)
  store i32 1, i32* %9, align 4
  br label %144

144:                                              ; preds = %131, %109, %101, %85, %84, %65, %53
  %145 = load i32, i32* %9, align 4
  ret i32 %145
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.item* @preload_key(i32, i32*, i32) #1

declare dso_local i32 @delay_op(%struct.item*, i32, i8*) #1

declare dso_local i32 @delete_time(%struct.item*) #1

declare dso_local i32 @change_value(%struct.item*, i32, i32*) #1

declare dso_local i32 @insert_time(%struct.item*) #1

declare dso_local %struct.item* @alloc_item(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
