; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_nbit_read_in.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_nbit_read_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, %struct.TYPE_4__* }

@NET_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nbit_read_in(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %7, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %11, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %12, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ule i8* %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ule i8* %29, %32
  br label %34

34:                                               ; preds = %28, %3
  %35 = phi i1 [ false, %3 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i8*, i8** %12, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ule i8* %43, %46
  br label %48

48:                                               ; preds = %42, %34
  %49 = phi i1 [ true, %34 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  br label %52

52:                                               ; preds = %123, %48
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %130

55:                                               ; preds = %52
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  br label %68

64:                                               ; preds = %55
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i8* [ %63, %60 ], [ %67, %64 ]
  %70 = load i8*, i8** %12, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @NET_BUFFER_SIZE, align 4
  %77 = icmp ule i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %68
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %68
  %86 = load i32, i32* %9, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load i8*, i8** %11, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @memcpy(i8* %89, i8* %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i8*, i8** %12, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %12, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i8*, i8** %11, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %11, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %88, %85
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load i8*, i8** %12, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %111, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %121 = icmp eq %struct.TYPE_4__* %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116, %110, %107
  br label %130

123:                                              ; preds = %116
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  store %struct.TYPE_4__* %126, %struct.TYPE_4__** %8, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %12, align 8
  br label %52

130:                                              ; preds = %122, %52
  %131 = load i8*, i8** %12, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = icmp eq i8* %131, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %141 = icmp ne %struct.TYPE_4__* %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  store %struct.TYPE_4__* %145, %struct.TYPE_4__** %8, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %12, align 8
  br label %149

149:                                              ; preds = %142, %136, %130
  %150 = load i8*, i8** %12, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  store %struct.TYPE_4__* %153, %struct.TYPE_4__** %155, align 8
  %156 = load i32, i32* %10, align 4
  ret i32 %156
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
