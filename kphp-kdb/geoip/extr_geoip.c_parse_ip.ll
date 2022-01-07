; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_parse_ip.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_parse_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buff = common dso_local global i8* null, align 8
@parse_pos = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"\22%u.%u.%u.%u\22%n\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%u.%u.%u.%u%n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_ip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i8*, i8** @buff, align 8
  %7 = load i64, i64* @parse_pos, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 44
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i64, i64* @parse_pos, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* @parse_pos, align 8
  br label %15

15:                                               ; preds = %12, %0
  %16 = load i32, i32* @mode, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** @buff, align 8
  %20 = load i64, i64* @parse_pos, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %1, i32* %2, i32* %3, i32* %4, i32* %5)
  %23 = icmp eq i32 %22, 4
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  br label %40

26:                                               ; preds = %15
  %27 = load i32, i32* @mode, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i8*, i8** @buff, align 8
  %31 = load i64, i64* @parse_pos, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = call i32 @sscanf(i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %1, i32* %2, i32* %3, i32* %4, i32* %5)
  %34 = icmp eq i32 %33, 4
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  br label %39

37:                                               ; preds = %26
  %38 = call i32 @assert(i32 0)
  br label %39

39:                                               ; preds = %37, %29
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i32, i32* %1, align 4
  %42 = icmp ule i32 0, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %1, align 4
  %45 = icmp ult i32 %44, 256
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ false, %40 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = icmp ule i32 0, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %2, align 4
  %54 = icmp ult i32 %53, 256
  br label %55

55:                                               ; preds = %52, %46
  %56 = phi i1 [ false, %46 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = icmp ule i32 0, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %3, align 4
  %63 = icmp ult i32 %62, 256
  br label %64

64:                                               ; preds = %61, %55
  %65 = phi i1 [ false, %55 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = icmp ule i32 0, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  %72 = icmp ult i32 %71, 256
  br label %73

73:                                               ; preds = %70, %64
  %74 = phi i1 [ false, %64 ], [ %72, %70 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @parse_pos, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* @parse_pos, align 8
  %81 = load i8*, i8** @buff, align 8
  %82 = load i64, i64* @parse_pos, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %73
  %87 = load i8*, i8** @buff, align 8
  %88 = load i64, i64* @parse_pos, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 44
  br label %93

93:                                               ; preds = %86, %73
  %94 = phi i1 [ true, %73 ], [ %92, %86 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i32, i32* %1, align 4
  %98 = shl i32 %97, 24
  %99 = load i32, i32* %2, align 4
  %100 = shl i32 %99, 16
  %101 = add i32 %98, %100
  %102 = load i32, i32* %3, align 4
  %103 = shl i32 %102, 8
  %104 = add i32 %101, %103
  %105 = load i32, i32* %4, align 4
  %106 = add i32 %104, %105
  ret i32 %106
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
