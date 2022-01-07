; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_parse_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_parse_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buff = common dso_local global i8* null, align 8
@parse_pos = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\22%u\22%n\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%u%n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_int() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @buff, align 8
  %4 = load i64, i64* @parse_pos, align 8
  %5 = getelementptr inbounds i8, i8* %3, i64 %4
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 44
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i64, i64* @parse_pos, align 8
  %11 = add i64 %10, 1
  store i64 %11, i64* @parse_pos, align 8
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i32, i32* @mode, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** @buff, align 8
  %17 = load i64, i64* @parse_pos, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %1, i32* %2)
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  br label %31

23:                                               ; preds = %12
  %24 = load i8*, i8** @buff, align 8
  %25 = load i64, i64* @parse_pos, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = call i32 @sscanf(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %1, i32* %2)
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  br label %31

31:                                               ; preds = %23, %15
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @parse_pos, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* @parse_pos, align 8
  %36 = load i8*, i8** @buff, align 8
  %37 = load i64, i64* @parse_pos, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %31
  %42 = load i8*, i8** @buff, align 8
  %43 = load i64, i64* @parse_pos, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 44
  br i1 %47, label %62, label %48

48:                                               ; preds = %41
  %49 = load i8*, i8** @buff, align 8
  %50 = load i64, i64* @parse_pos, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load i8*, i8** @buff, align 8
  %57 = load i64, i64* @parse_pos, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 13
  br label %62

62:                                               ; preds = %55, %48, %41, %31
  %63 = phi i1 [ true, %48 ], [ true, %41 ], [ true, %31 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
