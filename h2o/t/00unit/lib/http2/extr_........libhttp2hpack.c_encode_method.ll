; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_........libhttp2hpack.c_encode_method.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_........libhttp2hpack.c_encode_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@H2O_TOKEN_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64)* @encode_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_method(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = bitcast %struct.TYPE_4__* %5 to i64*
  store i64 %2, i64* %8, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = call i64 @h2o_memis(i32 %10, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %7, align 8
  store i32 130, i32* %17, align 4
  %19 = load i32*, i32** %7, align 8
  store i32* %19, i32** %4, align 8
  br label %37

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i64 @h2o_memis(i32 %22, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %7, align 8
  store i32 131, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  store i32* %31, i32** %4, align 8
  br label %37

32:                                               ; preds = %20
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @H2O_TOKEN_METHOD, align 4
  %36 = call i32* @encode_header_token(i32* %33, i32* %34, i32 %35, %struct.TYPE_4__* %5)
  store i32* %36, i32** %4, align 8
  br label %37

37:                                               ; preds = %32, %28, %16
  %38 = load i32*, i32** %4, align 8
  ret i32* %38
}

declare dso_local i64 @h2o_memis(i32, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32* @encode_header_token(i32*, i32*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
