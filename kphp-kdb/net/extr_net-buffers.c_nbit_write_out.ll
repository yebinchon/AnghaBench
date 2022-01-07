; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_nbit_write_out.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_nbit_write_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, %struct.TYPE_4__* }

@NET_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nbit_write_out(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
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
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp uge i8* %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  br label %45

45:                                               ; preds = %116, %34
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %120

48:                                               ; preds = %45
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @NET_BUFFER_SIZE, align 4
  %59 = icmp ule i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %48
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %48
  %68 = load i32, i32* %9, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load i8*, i8** %12, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @memcpy(i8* %71, i8* %72, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i8*, i8** %12, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %12, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i8*, i8** %11, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %11, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %70, %67
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %97 = icmp eq %struct.TYPE_4__* %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92, %89
  br label %120

99:                                               ; preds = %92
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %8, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %12, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %99
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = icmp eq i8* %113, %114
  br label %116

116:                                              ; preds = %110, %99
  %117 = phi i1 [ true, %99 ], [ %115, %110 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  br label %45

120:                                              ; preds = %98, %45
  %121 = load i8*, i8** %12, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = icmp eq i8* %121, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %120
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %131 = icmp ne %struct.TYPE_4__* %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  store %struct.TYPE_4__* %135, %struct.TYPE_4__** %8, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %12, align 8
  br label %139

139:                                              ; preds = %132, %126, %120
  %140 = load i8*, i8** %12, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  store %struct.TYPE_4__* %143, %struct.TYPE_4__** %145, align 8
  %146 = load i32, i32* %10, align 4
  ret i32 %146
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
