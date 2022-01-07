; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_skip_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_skip_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buff = common dso_local global i8* null, align 8
@parse_pos = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skip_int() #0 {
  %1 = alloca i8, align 1
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
  br label %32

32:                                               ; preds = %52, %22
  %33 = load i8*, i8** @buff, align 8
  %34 = load i64, i64* @parse_pos, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 34
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load i8*, i8** @buff, align 8
  %41 = load i64, i64* @parse_pos, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* @parse_pos, align 8
  %43 = getelementptr inbounds i8, i8* %40, i64 %41
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %1, align 1
  %45 = load i8, i8* %1, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sge i32 %46, 48
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i8, i8* %1, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sle i32 %50, 57
  br label %52

52:                                               ; preds = %48, %39
  %53 = phi i1 [ false, %39 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  br label %32

56:                                               ; preds = %32
  %57 = load i8*, i8** @buff, align 8
  %58 = load i64, i64* @parse_pos, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* @parse_pos, align 8
  %60 = getelementptr inbounds i8, i8* %57, i64 %58
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 34
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i8*, i8** @buff, align 8
  %67 = load i64, i64* @parse_pos, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %56
  %72 = load i8*, i8** @buff, align 8
  %73 = load i64, i64* @parse_pos, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 44
  br i1 %77, label %92, label %78

78:                                               ; preds = %71
  %79 = load i8*, i8** @buff, align 8
  %80 = load i64, i64* @parse_pos, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 10
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load i8*, i8** @buff, align 8
  %87 = load i64, i64* @parse_pos, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 13
  br label %92

92:                                               ; preds = %85, %78, %71, %56
  %93 = phi i1 [ true, %78 ], [ true, %71 ], [ true, %56 ], [ %91, %85 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
