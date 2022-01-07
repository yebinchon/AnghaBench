; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_string.c_stringn.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_string.c_stringn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string = type { i32, i8*, %struct.string* }

@scatter = common dso_local global i32* null, align 8
@buckets = common dso_local global %struct.string** null, align 8
@stringn.next = internal global i8* null, align 8
@stringn.strlimit = internal global i8* null, align 8
@PERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stringn(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.string*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @assert(i8* %13)
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %31, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 1
  %23 = load i32*, i32** @scatter, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %8, align 8
  %26 = load i8, i8* %24, align 1
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %22, %29
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %6, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.string**, %struct.string*** @buckets, align 8
  %36 = call i32 @NELEMS(%struct.string** %35)
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.string**, %struct.string*** @buckets, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.string*, %struct.string** %40, i64 %42
  %44 = load %struct.string*, %struct.string** %43, align 8
  store %struct.string* %44, %struct.string** %9, align 8
  br label %45

45:                                               ; preds = %80, %34
  %46 = load %struct.string*, %struct.string** %9, align 8
  %47 = icmp ne %struct.string* %46, null
  br i1 %47, label %48, label %84

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.string*, %struct.string** %9, align 8
  %51 = getelementptr inbounds %struct.string, %struct.string* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %48
  %55 = load i8*, i8** %4, align 8
  store i8* %55, i8** %10, align 8
  %56 = load %struct.string*, %struct.string** %9, align 8
  %57 = getelementptr inbounds %struct.string, %struct.string* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %11, align 8
  br label %59

59:                                               ; preds = %68, %54
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.string*, %struct.string** %9, align 8
  %65 = getelementptr inbounds %struct.string, %struct.string* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %3, align 8
  br label %142

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %10, align 8
  %71 = load i8, i8* %69, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %11, align 8
  %75 = load i8, i8* %73, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %72, %76
  br i1 %77, label %59, label %78

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %48
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.string*, %struct.string** %9, align 8
  %82 = getelementptr inbounds %struct.string, %struct.string* %81, i32 0, i32 2
  %83 = load %struct.string*, %struct.string** %82, align 8
  store %struct.string* %83, %struct.string** %9, align 8
  br label %45

84:                                               ; preds = %45
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = load i8*, i8** @stringn.strlimit, align 8
  %89 = load i8*, i8** @stringn.next, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = icmp sge i64 %87, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %84
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 4096
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @PERM, align 4
  %99 = call i8* @allocate(i32 %97, i32 %98)
  store i8* %99, i8** @stringn.next, align 8
  %100 = load i8*, i8** @stringn.next, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8* %103, i8** @stringn.strlimit, align 8
  br label %104

104:                                              ; preds = %94, %84
  %105 = load %struct.string*, %struct.string** %9, align 8
  %106 = load i32, i32* @PERM, align 4
  %107 = call i32 @NEW(%struct.string* %105, i32 %106)
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.string*, %struct.string** %9, align 8
  %110 = getelementptr inbounds %struct.string, %struct.string* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i8*, i8** @stringn.next, align 8
  %112 = load %struct.string*, %struct.string** %9, align 8
  %113 = getelementptr inbounds %struct.string, %struct.string* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %118, %104
  %115 = load i8*, i8** %4, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = icmp ult i8* %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %4, align 8
  %121 = load i8, i8* %119, align 1
  %122 = load i8*, i8** @stringn.next, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** @stringn.next, align 8
  store i8 %121, i8* %122, align 1
  br label %114

124:                                              ; preds = %114
  %125 = load i8*, i8** @stringn.next, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** @stringn.next, align 8
  store i8 0, i8* %125, align 1
  %127 = load %struct.string**, %struct.string*** @buckets, align 8
  %128 = load i32, i32* %7, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.string*, %struct.string** %127, i64 %129
  %131 = load %struct.string*, %struct.string** %130, align 8
  %132 = load %struct.string*, %struct.string** %9, align 8
  %133 = getelementptr inbounds %struct.string, %struct.string* %132, i32 0, i32 2
  store %struct.string* %131, %struct.string** %133, align 8
  %134 = load %struct.string*, %struct.string** %9, align 8
  %135 = load %struct.string**, %struct.string*** @buckets, align 8
  %136 = load i32, i32* %7, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.string*, %struct.string** %135, i64 %137
  store %struct.string* %134, %struct.string** %138, align 8
  %139 = load %struct.string*, %struct.string** %9, align 8
  %140 = getelementptr inbounds %struct.string, %struct.string* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %3, align 8
  br label %142

142:                                              ; preds = %124, %63
  %143 = load i8*, i8** %3, align 8
  ret i8* %143
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @NELEMS(%struct.string**) #1

declare dso_local i8* @allocate(i32, i32) #1

declare dso_local i32 @NEW(%struct.string*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
