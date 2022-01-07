; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_counter_serialize_raw.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_counter_serialize_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_SEX = common dso_local global i32 0, align 4
@MAX_AGE = common dso_local global i32 0, align 4
@MAX_MSTATUS = common dso_local global i32 0, align 4
@MAX_POLIT = common dso_local global i32 0, align 4
@MAX_SECTION = common dso_local global i32 0, align 4
@MAX_SOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @counter_serialize_raw(%struct.counter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.counter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.counter* %0, %struct.counter** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.counter*, %struct.counter** %4, align 8
  %8 = icmp ne %struct.counter* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %145

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %6, align 8
  %13 = load %struct.counter*, %struct.counter** %4, align 8
  %14 = getelementptr inbounds %struct.counter, %struct.counter* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  %18 = load %struct.counter*, %struct.counter** %4, align 8
  %19 = getelementptr inbounds %struct.counter, %struct.counter* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %23 = load %struct.counter*, %struct.counter** %4, align 8
  %24 = getelementptr inbounds %struct.counter, %struct.counter* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  %28 = load %struct.counter*, %struct.counter** %4, align 8
  %29 = getelementptr inbounds %struct.counter, %struct.counter* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %33 = load %struct.counter*, %struct.counter** %4, align 8
  %34 = getelementptr inbounds %struct.counter, %struct.counter* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.counter*, %struct.counter** %4, align 8
  %40 = getelementptr inbounds %struct.counter, %struct.counter* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAX_SEX, align 4
  %43 = call i32* @serialize_list_raw(i32* %38, i32 %41, i32 %42)
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.counter*, %struct.counter** %4, align 8
  %46 = getelementptr inbounds %struct.counter, %struct.counter* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MAX_AGE, align 4
  %49 = call i32* @serialize_list_raw(i32* %44, i32 %47, i32 %48)
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.counter*, %struct.counter** %4, align 8
  %52 = getelementptr inbounds %struct.counter, %struct.counter* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MAX_MSTATUS, align 4
  %55 = call i32* @serialize_list_raw(i32* %50, i32 %53, i32 %54)
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.counter*, %struct.counter** %4, align 8
  %58 = getelementptr inbounds %struct.counter, %struct.counter* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MAX_POLIT, align 4
  %61 = call i32* @serialize_list_raw(i32* %56, i32 %59, i32 %60)
  store i32* %61, i32** %6, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.counter*, %struct.counter** %4, align 8
  %64 = getelementptr inbounds %struct.counter, %struct.counter* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MAX_SECTION, align 4
  %67 = call i32* @serialize_list_raw(i32* %62, i32 %65, i32 %66)
  store i32* %67, i32** %6, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.counter*, %struct.counter** %4, align 8
  %70 = getelementptr inbounds %struct.counter, %struct.counter* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MAX_AGE, align 4
  %73 = mul nsw i32 %72, 2
  %74 = call i32* @serialize_list_raw(i32* %68, i32 %71, i32 %73)
  store i32* %74, i32** %6, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.counter*, %struct.counter** %4, align 8
  %77 = getelementptr inbounds %struct.counter, %struct.counter* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.counter*, %struct.counter** %4, align 8
  %80 = getelementptr inbounds %struct.counter, %struct.counter* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %10
  %84 = load %struct.counter*, %struct.counter** %4, align 8
  %85 = getelementptr inbounds %struct.counter, %struct.counter* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 -1
  %88 = load i32, i32* %87, align 4
  br label %90

89:                                               ; preds = %10
  br label %90

90:                                               ; preds = %89, %83
  %91 = phi i32 [ %88, %83 ], [ 0, %89 ]
  %92 = call i32* @serialize_list2_raw(i32* %75, i32* %78, i32 %91)
  store i32* %92, i32** %6, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.counter*, %struct.counter** %4, align 8
  %95 = getelementptr inbounds %struct.counter, %struct.counter* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.counter*, %struct.counter** %4, align 8
  %98 = getelementptr inbounds %struct.counter, %struct.counter* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = load %struct.counter*, %struct.counter** %4, align 8
  %103 = getelementptr inbounds %struct.counter, %struct.counter* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 -1
  %106 = load i32, i32* %105, align 4
  br label %108

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107, %101
  %109 = phi i32 [ %106, %101 ], [ 0, %107 ]
  %110 = call i32* @serialize_list2a_raw(i32* %93, i32* %96, i32 %109)
  store i32* %110, i32** %6, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load %struct.counter*, %struct.counter** %4, align 8
  %113 = getelementptr inbounds %struct.counter, %struct.counter* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.counter*, %struct.counter** %4, align 8
  %116 = getelementptr inbounds %struct.counter, %struct.counter* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %108
  %120 = load %struct.counter*, %struct.counter** %4, align 8
  %121 = getelementptr inbounds %struct.counter, %struct.counter* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 -1
  %124 = load i32, i32* %123, align 4
  br label %126

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %119
  %127 = phi i32 [ %124, %119 ], [ 0, %125 ]
  %128 = call i32* @serialize_list2a_raw(i32* %111, i32* %114, i32 %127)
  store i32* %128, i32** %6, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = load %struct.counter*, %struct.counter** %4, align 8
  %131 = getelementptr inbounds %struct.counter, %struct.counter* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @MAX_SOURCE, align 4
  %134 = call i32* @serialize_list_raw(i32* %129, i32 %132, i32 %133)
  store i32* %134, i32** %6, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = load %struct.counter*, %struct.counter** %4, align 8
  %137 = call i32* @serialize_subcnt_list_raw(i32* %135, %struct.counter* %136)
  store i32* %137, i32** %6, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = bitcast i32* %138 to i8*
  %140 = load i8*, i8** %5, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %126, %9
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32* @serialize_list_raw(i32*, i32, i32) #1

declare dso_local i32* @serialize_list2_raw(i32*, i32*, i32) #1

declare dso_local i32* @serialize_list2a_raw(i32*, i32*, i32) #1

declare dso_local i32* @serialize_subcnt_list_raw(i32*, %struct.counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
