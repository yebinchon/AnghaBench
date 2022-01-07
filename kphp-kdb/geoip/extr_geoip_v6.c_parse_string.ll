; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_parse_string.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_parse_string.c"
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
  br label %12

12:                                               ; preds = %19, %11
  %13 = load i8*, i8** @buff, align 8
  %14 = load i64, i64* @parse_pos, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i64, i64* @parse_pos, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* @parse_pos, align 8
  br label %12

22:                                               ; preds = %12
  %23 = load i8*, i8** @buff, align 8
  %24 = load i64, i64* @parse_pos, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* @parse_pos, align 8
  %26 = getelementptr inbounds i8, i8* %23, i64 %24
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 34
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %40, %22
  %33 = load i8*, i8** @buff, align 8
  %34 = load i64, i64* @parse_pos, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* @parse_pos, align 8
  %36 = getelementptr inbounds i8, i8* %33, i64 %34
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 34
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load i8*, i8** @buff, align 8
  %42 = load i64, i64* @parse_pos, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %32

49:                                               ; preds = %32
  %50 = load i8*, i8** @buff, align 8
  %51 = load i64, i64* @parse_pos, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %49
  %56 = load i8*, i8** @buff, align 8
  %57 = load i64, i64* @parse_pos, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 44
  br i1 %61, label %76, label %62

62:                                               ; preds = %55
  %63 = load i8*, i8** @buff, align 8
  %64 = load i64, i64* @parse_pos, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load i8*, i8** @buff, align 8
  %71 = load i64, i64* @parse_pos, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 13
  br label %76

76:                                               ; preds = %69, %62, %55, %49
  %77 = phi i1 [ true, %62 ], [ true, %55 ], [ true, %49 ], [ %75, %69 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32, i32* %1, align 4
  %81 = add nsw i32 %80, 1
  ret i32 %81
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
