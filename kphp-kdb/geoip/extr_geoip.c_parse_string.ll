; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_parse_string.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buff = common dso_local global i8* null, align 8
@parse_pos = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_string() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @buff, align 8
  %3 = load i64, i64* @parse_pos, align 8
  %4 = getelementptr inbounds i8, i8* %2, i64 %3
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 44
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i64, i64* @parse_pos, align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* @parse_pos, align 8
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i8*, i8** @buff, align 8
  %13 = load i64, i64* @parse_pos, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* @parse_pos, align 8
  %15 = getelementptr inbounds i8, i8* %12, i64 %13
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 34
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %29, %11
  %22 = load i8*, i8** @buff, align 8
  %23 = load i64, i64* @parse_pos, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* @parse_pos, align 8
  %25 = getelementptr inbounds i8, i8* %22, i64 %23
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 34
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load i8*, i8** @buff, align 8
  %31 = load i64, i64* @parse_pos, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %21

38:                                               ; preds = %21
  %39 = load i8*, i8** @buff, align 8
  %40 = load i64, i64* @parse_pos, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load i8*, i8** @buff, align 8
  %46 = load i64, i64* @parse_pos, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 44
  br i1 %50, label %65, label %51

51:                                               ; preds = %44
  %52 = load i8*, i8** @buff, align 8
  %53 = load i64, i64* @parse_pos, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load i8*, i8** @buff, align 8
  %60 = load i64, i64* @parse_pos, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 13
  br label %65

65:                                               ; preds = %58, %51, %44, %38
  %66 = phi i1 [ true, %51 ], [ true, %44 ], [ true, %38 ], [ %64, %58 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
