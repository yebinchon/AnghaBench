; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_symbol.c_sym_intern.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_symbol.c_sym_intern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32, i32, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i8*, i64, i64)* @sym_intern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sym_intern(%struct.TYPE_10__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @sym_validate_len(%struct.TYPE_10__* %15, i64 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @symhash(i8* %18, i64 %19)
  store i64 %20, i64* %12, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i64 @find_symbol(%struct.TYPE_10__* %21, i8* %22, i64 %23, i64 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i64, i64* %10, align 8
  store i64 %29, i64* %5, align 8
  br label %154

30:                                               ; preds = %4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  store i64 %34, i64* %10, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %30
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store i64 100, i64* %47, align 8
  br label %56

48:                                               ; preds = %40
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = mul i64 %51, 6
  %53 = udiv i64 %52, 5
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %48, %45
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  %65 = mul i64 24, %64
  %66 = trunc i64 %65 to i32
  %67 = call i64 @mrb_realloc(%struct.TYPE_10__* %57, %struct.TYPE_9__* %60, i32 %66)
  %68 = inttoptr i64 %67 to %struct.TYPE_9__*
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %70, align 8
  br label %71

71:                                               ; preds = %56, %30
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %75
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %11, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %71
  %83 = load i8*, i8** %7, align 8
  %84 = call i64 @mrb_ro_data_p(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82, %71
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @TRUE, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  br label %112

93:                                               ; preds = %82
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, 1
  %97 = call i64 @mrb_malloc(%struct.TYPE_10__* %94, i64 %96)
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %13, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @memcpy(i8* %99, i8* %100, i64 %101)
  %103 = load i8*, i8** %13, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %13, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @FALSE, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %93, %86
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %12, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %112
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = sub i64 %121, %128
  store i64 %129, i64* %14, align 8
  %130 = load i64, i64* %14, align 8
  %131 = icmp ugt i64 %130, 255
  br i1 %131, label %132, label %135

132:                                              ; preds = %120
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i32 255, i32* %134, align 8
  br label %140

135:                                              ; preds = %120
  %136 = load i64, i64* %14, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %135, %132
  br label %144

141:                                              ; preds = %112
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %140
  %145 = load i64, i64* %10, align 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* %12, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32 %146, i32* %151, align 4
  %152 = load i64, i64* %10, align 8
  %153 = shl i64 %152, 1
  store i64 %153, i64* %5, align 8
  br label %154

154:                                              ; preds = %144, %28
  %155 = load i64, i64* %5, align 8
  ret i64 %155
}

declare dso_local i32 @sym_validate_len(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @symhash(i8*, i64) #1

declare dso_local i64 @find_symbol(%struct.TYPE_10__*, i8*, i64, i64) #1

declare dso_local i64 @mrb_realloc(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @mrb_ro_data_p(i8*) #1

declare dso_local i64 @mrb_malloc(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
