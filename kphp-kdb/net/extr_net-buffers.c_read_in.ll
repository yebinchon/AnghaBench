; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_read_in.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_read_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_in(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %7, align 8
  br label %25

25:                                               ; preds = %21, %3
  br label %26

26:                                               ; preds = %161, %25
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %162

29:                                               ; preds = %26
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  br label %43

39:                                               ; preds = %29
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i64 [ %38, %34 ], [ %42, %39 ]
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %43
  %56 = load i32, i32* %9, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %55
  %59 = load i8*, i8** %11, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @memcpy(i8* %59, i32 %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %11, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %58, %55
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %146

90:                                               ; preds = %82
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = icmp eq %struct.TYPE_4__* %91, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %90
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i64 %97, i64* %101, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %94
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %106, %94
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 6
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  store %struct.TYPE_4__* %116, %struct.TYPE_4__** %7, align 8
  br label %140

117:                                              ; preds = %90
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  store %struct.TYPE_4__* %120, %struct.TYPE_4__** %8, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 7
  store %struct.TYPE_4__* %127, %struct.TYPE_4__** %129, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 6
  store %struct.TYPE_4__* %130, %struct.TYPE_4__** %132, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %134 = call i32 @free_buffer(%struct.TYPE_4__* %133)
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* %136, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %139, %struct.TYPE_4__** %7, align 8
  br label %140

140:                                              ; preds = %117, %113
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %143 = icmp eq %struct.TYPE_4__* %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %162

145:                                              ; preds = %140
  br label %157

146:                                              ; preds = %82
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = icmp eq i64 %149, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  br label %162

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %145
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  br label %162

161:                                              ; preds = %157
  br label %26

162:                                              ; preds = %160, %155, %144, %26
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %166, %163
  store i32 %167, i32* %165, align 8
  %168 = load i32, i32* %10, align 4
  ret i32 %168
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_buffer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
