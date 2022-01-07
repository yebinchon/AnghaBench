; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_parse_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_parse_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buff = common dso_local global i8* null, align 8
@parse_pos = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"\22%u\22%n\00", align 1

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
  %13 = load i8*, i8** @buff, align 8
  %14 = load i64, i64* @parse_pos, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %1, i32* %2)
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @parse_pos, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* @parse_pos, align 8
  %24 = load i8*, i8** @buff, align 8
  %25 = load i64, i64* @parse_pos, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %12
  %30 = load i8*, i8** @buff, align 8
  %31 = load i64, i64* @parse_pos, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 44
  br i1 %35, label %50, label %36

36:                                               ; preds = %29
  %37 = load i8*, i8** @buff, align 8
  %38 = load i64, i64* @parse_pos, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load i8*, i8** @buff, align 8
  %45 = load i64, i64* @parse_pos, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 13
  br label %50

50:                                               ; preds = %43, %36, %29, %12
  %51 = phi i1 [ true, %36 ], [ true, %29 ], [ true, %12 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
