; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_parse_ip_mask.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_parse_ip_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buff = common dso_local global i8* null, align 8
@parse_pos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%u.%u.%u.%u/%u%n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_ip_mask(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8*, i8** @buff, align 8
  %12 = load i32, i32* @parse_pos, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %5)
  %16 = icmp eq i32 %15, 5
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ule i32 0, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %22, 256
  br label %24

24:                                               ; preds = %21, %2
  %25 = phi i1 [ false, %2 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ule i32 0, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %31, 256
  br label %33

33:                                               ; preds = %30, %24
  %34 = phi i1 [ false, %24 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ule i32 0, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = icmp ult i32 %40, 256
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i1 [ false, %33 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp ule i32 0, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = icmp ult i32 %49, 256
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi i1 [ false, %42 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = icmp ult i32 0, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = icmp ule i32 %58, 32
  br label %60

60:                                               ; preds = %57, %51
  %61 = phi i1 [ false, %51 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = sub i32 32, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @parse_pos, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* @parse_pos, align 4
  %69 = load i8*, i8** @buff, align 8
  %70 = load i32, i32* @parse_pos, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %60
  %76 = load i8*, i8** @buff, align 8
  %77 = load i32, i32* @parse_pos, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 44
  br label %83

83:                                               ; preds = %75, %60
  %84 = phi i1 [ true, %60 ], [ %82, %75 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = shl i32 %87, 24
  %89 = load i32, i32* %7, align 4
  %90 = shl i32 %89, 16
  %91 = add i32 %88, %90
  %92 = load i32, i32* %8, align 4
  %93 = shl i32 %92, 8
  %94 = add i32 %91, %93
  %95 = load i32, i32* %9, align 4
  %96 = add i32 %94, %95
  %97 = load i32*, i32** %3, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  %99 = shl i32 1, %98
  %100 = sub nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %10, align 4
  %112 = add i32 %110, %111
  %113 = load i32*, i32** %4, align 8
  store i32 %112, i32* %113, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
