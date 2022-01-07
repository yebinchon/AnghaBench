; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_slip_common.c_slip_proto_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_slip_common.c_slip_proto_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slip_proto = type { i32, i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slip_proto_read(i32 %0, i8* %1, i32 %2, %struct.slip_proto* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.slip_proto*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.slip_proto* %3, %struct.slip_proto** %9, align 8
  %14 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %15 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %78

18:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %74, %18
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %22 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %19
  %26 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %27 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %35 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %38 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %37, i32 0, i32 1
  %39 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %40 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %39, i32 0, i32 3
  %41 = call i32 @slip_unesc(i32 %33, i32* %36, i64* %38, i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %25
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %47 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @memcpy(i8* %45, i32* %48, i32 %49)
  %51 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %52 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %55 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %61 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i32 @memmove(i32* %53, i32* %59, i32 %64)
  %66 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %67 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %72 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %162

74:                                               ; preds = %25
  br label %19

75:                                               ; preds = %19
  %76 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %77 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %81 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %84 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %88 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 8, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @net_read(i32 %79, i32* %86, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %78
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %162

97:                                               ; preds = %78
  %98 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %99 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %158, %97
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %161

106:                                              ; preds = %102
  %107 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %108 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %117 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %120 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %119, i32 0, i32 1
  %121 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %122 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %121, i32 0, i32 3
  %123 = call i32 @slip_unesc(i32 %115, i32* %118, i64* %120, i32* %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %157

126:                                              ; preds = %106
  %127 = load i8*, i8** %7, align 8
  %128 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %129 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @memcpy(i8* %127, i32* %130, i32 %131)
  %133 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %134 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %137 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %139, %140
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %138, i64 %143
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  %148 = sub nsw i32 %145, %147
  %149 = call i32 @memmove(i32* %135, i32* %144, i32 %148)
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  %153 = sub nsw i32 %150, %152
  %154 = load %struct.slip_proto*, %struct.slip_proto** %9, align 8
  %155 = getelementptr inbounds %struct.slip_proto, %struct.slip_proto* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %5, align 4
  br label %162

157:                                              ; preds = %106
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %102

161:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %126, %95, %44
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @slip_unesc(i32, i32*, i64*, i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @net_read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
