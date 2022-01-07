; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_parse_country.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_parse_country.c"
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
  store i32 0, i32* %1, align 4
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
  %32 = load i8*, i8** @buff, align 8
  %33 = load i64, i64* @parse_pos, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* @parse_pos, align 8
  %35 = getelementptr inbounds i8, i8* %32, i64 %33
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* %1, align 4
  %39 = mul i32 %38, 256
  %40 = load i8*, i8** @buff, align 8
  %41 = load i64, i64* @parse_pos, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* @parse_pos, align 8
  %43 = getelementptr inbounds i8, i8* %40, i64 %41
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = add i32 %39, %45
  store i32 %46, i32* %1, align 4
  %47 = load i8*, i8** @buff, align 8
  %48 = load i64, i64* @parse_pos, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* @parse_pos, align 8
  %50 = getelementptr inbounds i8, i8* %47, i64 %48
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 34
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i8*, i8** @buff, align 8
  %57 = load i64, i64* @parse_pos, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %22
  %62 = load i8*, i8** @buff, align 8
  %63 = load i64, i64* @parse_pos, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 44
  br i1 %67, label %82, label %68

68:                                               ; preds = %61
  %69 = load i8*, i8** @buff, align 8
  %70 = load i64, i64* @parse_pos, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 10
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load i8*, i8** @buff, align 8
  %77 = load i64, i64* @parse_pos, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 13
  br label %82

82:                                               ; preds = %75, %68, %61, %22
  %83 = phi i1 [ true, %68 ], [ true, %61 ], [ true, %22 ], [ %81, %75 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
