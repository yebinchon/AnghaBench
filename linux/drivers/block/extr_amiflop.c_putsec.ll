; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_putsec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_putsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.header = type { i32, i32, i32, i8*, i8*, i64*, i32 }

@unit = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32, i64*, i32)* @putsec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @putsec(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.header, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 3
  store i32 %10, i32* %4, align 4
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 -1
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %13, 1
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 715827882, i32 -1431655766
  %18 = zext i32 %17 to i64
  %19 = load i64*, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i32 1
  store i64* %21, i64** %5, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %5, align 8
  store i64 1149846665, i64* %22, align 8
  %24 = getelementptr inbounds %struct.header, %struct.header* %7, i32 0, i32 0
  store i32 255, i32* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.header, %struct.header* %7, i32 0, i32 6
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.header, %struct.header* %7, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %41, %49
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  %53 = getelementptr inbounds %struct.header, %struct.header* %7, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %63, %3
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 16
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.header, %struct.header* %7, i32 0, i32 5
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %54

66:                                               ; preds = %54
  %67 = bitcast %struct.header* %7 to i32*
  %68 = getelementptr inbounds %struct.header, %struct.header* %7, i32 0, i32 4
  %69 = bitcast i8** %68 to i8*
  %70 = bitcast %struct.header* %7 to i8*
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call i8* @checksum(i32* %67, i32 %74)
  %76 = getelementptr inbounds %struct.header, %struct.header* %7, i32 0, i32 4
  store i8* %75, i8** %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = mul nsw i32 %83, 512
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %82, %85
  %87 = inttoptr i64 %86 to i32*
  %88 = call i8* @checksum(i32* %87, i32 512)
  %89 = getelementptr inbounds %struct.header, %struct.header* %7, i32 0, i32 3
  store i8* %88, i8** %89, align 8
  %90 = load i64*, i64** %5, align 8
  %91 = getelementptr inbounds %struct.header, %struct.header* %7, i32 0, i32 0
  %92 = call i32 @encode_block(i64* %90, i32* %91, i32 4)
  %93 = load i64*, i64** %5, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 2
  store i64* %94, i64** %5, align 8
  %95 = load i64*, i64** %5, align 8
  %96 = getelementptr inbounds %struct.header, %struct.header* %7, i32 0, i32 5
  %97 = bitcast i64** %96 to i32*
  %98 = call i32 @encode_block(i64* %95, i32* %97, i32 16)
  %99 = load i64*, i64** %5, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 8
  store i64* %100, i64** %5, align 8
  %101 = load i64*, i64** %5, align 8
  %102 = getelementptr inbounds %struct.header, %struct.header* %7, i32 0, i32 4
  %103 = bitcast i8** %102 to i32*
  %104 = call i32 @encode_block(i64* %101, i32* %103, i32 4)
  %105 = load i64*, i64** %5, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 2
  store i64* %106, i64** %5, align 8
  %107 = load i64*, i64** %5, align 8
  %108 = getelementptr inbounds %struct.header, %struct.header* %7, i32 0, i32 3
  %109 = bitcast i8** %108 to i32*
  %110 = call i32 @encode_block(i64* %107, i32* %109, i32 4)
  %111 = load i64*, i64** %5, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 2
  store i64* %112, i64** %5, align 8
  %113 = load i64*, i64** %5, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = mul nsw i32 %120, 512
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %119, %122
  %124 = inttoptr i64 %123 to i32*
  %125 = call i32 @encode_block(i64* %113, i32* %124, i32 512)
  %126 = load i64*, i64** %5, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 256
  store i64* %127, i64** %5, align 8
  %128 = load i64*, i64** %5, align 8
  ret i64* %128
}

declare dso_local i8* @checksum(i32*, i32) #1

declare dso_local i32 @encode_block(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
