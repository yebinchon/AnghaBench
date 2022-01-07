; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_vli.h_bitstream_put_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_vli.h_bitstream_put_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitstream = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitstream*, i64, i32)* @bitstream_put_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitstream_put_bits(%struct.bitstream* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitstream*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.bitstream* %0, %struct.bitstream** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %11 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %101

17:                                               ; preds = %3
  %18 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %19 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %23 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %25, %26
  %28 = sub i32 %27, 1
  %29 = lshr i32 %28, 3
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %21, i64 %30
  %32 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %33 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %31 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %39 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp sge i64 %37, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %17
  %44 = load i32, i32* @ENOBUFS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %101

46:                                               ; preds = %17
  %47 = load i32, i32* %7, align 4
  %48 = icmp ult i32 %47, 64
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = sub i32 64, %50
  %52 = zext i32 %51 to i64
  %53 = lshr i64 -1, %52
  %54 = load i64, i64* %6, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i64, i64* %6, align 8
  %58 = and i64 %57, 255
  %59 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %60 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = zext i32 %62 to i64
  %64 = shl i64 %58, %63
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %8, align 8
  %67 = load i8, i8* %65, align 1
  %68 = zext i8 %67 to i64
  %69 = or i64 %68, %64
  %70 = trunc i64 %69 to i8
  store i8 %70, i8* %65, align 1
  %71 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %72 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sub i32 8, %74
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %92, %56
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = lshr i64 %81, %83
  %85 = and i64 %84, 255
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  %88 = load i8, i8* %86, align 1
  %89 = zext i8 %88 to i64
  %90 = or i64 %89, %85
  %91 = trunc i64 %90 to i8
  store i8 %91, i8* %86, align 1
  br label %92

92:                                               ; preds = %80
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, 8
  store i32 %94, i32* %9, align 4
  br label %76

95:                                               ; preds = %76
  %96 = load %struct.bitstream*, %struct.bitstream** %5, align 8
  %97 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %96, i32 0, i32 2
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @bitstream_cursor_advance(%struct.TYPE_2__* %97, i32 %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %95, %43, %16
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @bitstream_cursor_advance(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
