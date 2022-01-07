; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_parse_country.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_parse_country.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buff = common dso_local global i8* null, align 8
@parse_pos = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_country() #0 {
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
  store i32 0, i32* %1, align 4
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
  %21 = load i8*, i8** @buff, align 8
  %22 = load i64, i64* @parse_pos, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 34
  br i1 %26, label %27, label %43

27:                                               ; preds = %11
  %28 = load i8*, i8** @buff, align 8
  %29 = load i64, i64* @parse_pos, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* @parse_pos, align 8
  %31 = getelementptr inbounds i8, i8* %28, i64 %29
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = mul i32 %34, 256
  %36 = load i8*, i8** @buff, align 8
  %37 = load i64, i64* @parse_pos, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* @parse_pos, align 8
  %39 = getelementptr inbounds i8, i8* %36, i64 %37
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = add i32 %35, %41
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %27, %11
  %44 = load i8*, i8** @buff, align 8
  %45 = load i64, i64* @parse_pos, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* @parse_pos, align 8
  %47 = getelementptr inbounds i8, i8* %44, i64 %45
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 34
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i8*, i8** @buff, align 8
  %54 = load i64, i64* @parse_pos, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %43
  %59 = load i8*, i8** @buff, align 8
  %60 = load i64, i64* @parse_pos, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 44
  br i1 %64, label %79, label %65

65:                                               ; preds = %58
  %66 = load i8*, i8** @buff, align 8
  %67 = load i64, i64* @parse_pos, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load i8*, i8** @buff, align 8
  %74 = load i64, i64* @parse_pos, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 13
  br label %79

79:                                               ; preds = %72, %65, %58, %43
  %80 = phi i1 [ true, %65 ], [ true, %58 ], [ true, %43 ], [ %78, %72 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
