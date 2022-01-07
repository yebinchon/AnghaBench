; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_read_iterator_fetch_name.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_read_iterator_fetch_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i16, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*, i32)* @dns_read_iterator_fetch_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_read_iterator_fetch_name(%struct.TYPE_6__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i16, align 2
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %15

15:                                               ; preds = %115, %4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = call i64 @dns_read_iterator_fetch_uchar(%struct.TYPE_6__* %16, i8* %10)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %137

20:                                               ; preds = %15
  %21 = load i8, i8* %10, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %123

24:                                               ; preds = %20
  %25 = load i8, i8* %10, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 192
  %28 = icmp eq i32 %27, 192
  br i1 %28, label %29, label %78

29:                                               ; preds = %24
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 63
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %10, align 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = call i64 @dns_read_iterator_fetch_uchar(%struct.TYPE_6__* %34, i8* %11)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %137

38:                                               ; preds = %29
  %39 = load i8, i8* %10, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 63
  %42 = mul nsw i32 %41, 256
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = add nsw i32 %42, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %12, align 2
  %47 = load i16, i16* %12, align 2
  %48 = zext i16 %47 to i32
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i16, i16* %50, align 8
  %52 = zext i16 %51 to i32
  %53 = icmp sge i32 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %137

55:                                               ; preds = %38
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i16, i16* %12, align 2
  %60 = zext i16 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i16, i16* %63, align 8
  %65 = zext i16 %64 to i32
  %66 = load i16, i16* %12, align 2
  %67 = zext i16 %66 to i32
  %68 = sub nsw i32 %65, %67
  %69 = trunc i32 %68 to i16
  %70 = call i32 @dns_read_iterator_init(%struct.TYPE_6__* %13, i64 %61, i16 zeroext %69)
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @dns_read_iterator_fetch_name(%struct.TYPE_6__* %13, i8* %71, i8* %72, i32 %73)
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  br label %137

77:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %137

78:                                               ; preds = %24
  %79 = load i8, i8* %10, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 192
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 -1, i32* %5, align 4
  br label %137

84:                                               ; preds = %78
  %85 = load i8, i8* %10, align 1
  %86 = zext i8 %85 to i32
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %123

90:                                               ; preds = %84
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = icmp ne i8* %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 -1, i32* %5, align 4
  br label %137

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %9, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %8, align 8
  store i8 46, i8* %101, align 1
  br label %103

103:                                              ; preds = %98, %90
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 -1, i32* %5, align 4
  br label %137

108:                                              ; preds = %103
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = call i64 @dns_read_iterator_fetch_uchars(%struct.TYPE_6__* %109, i32 %110, i8* %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 -1, i32* %5, align 4
  br label %137

115:                                              ; preds = %108
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %9, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i8*, i8** %8, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %8, align 8
  br label %15

123:                                              ; preds = %89, %23
  %124 = load i32, i32* %9, align 4
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 -1, i32* %5, align 4
  br label %137

127:                                              ; preds = %123
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %9, align 4
  %130 = load i8*, i8** %8, align 8
  store i8 0, i8* %130, align 1
  %131 = load i8*, i8** %8, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %127, %126, %114, %107, %97, %83, %77, %76, %54, %37, %19
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i64 @dns_read_iterator_fetch_uchar(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @dns_read_iterator_init(%struct.TYPE_6__*, i64, i16 zeroext) #1

declare dso_local i64 @dns_read_iterator_fetch_uchars(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
