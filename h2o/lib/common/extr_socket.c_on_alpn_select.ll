; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_socket.c_on_alpn_select.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_socket.c_on_alpn_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@SSL_TLSEXT_ERR_NOACK = common dso_local global i32 0, align 4
@SSL_TLSEXT_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8*, i8*, i32, i8*)* @on_alpn_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_alpn_select(i32* %0, i8** %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %14, align 8
  store i64 0, i64* %15, align 8
  br label %21

21:                                               ; preds = %76, %6
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %23 = load i64, i64* %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %21
  %29 = load i8*, i8** %11, align 8
  store i8* %29, i8** %16, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = load i32, i32* %12, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %17, align 8
  br label %34

34:                                               ; preds = %71, %28
  %35 = load i8*, i8** %16, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = icmp ne i8* %35, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %34
  %39 = load i8*, i8** %16, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %16, align 8
  %41 = load i8, i8* %39, align 1
  %42 = zext i8 %41 to i64
  store i64 %42, i64* %18, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = load i64, i64* %18, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* @SSL_TLSEXT_ERR_NOACK, align 4
  store i32 %51, i32* %7, align 4
  br label %97

52:                                               ; preds = %38
  %53 = load i64, i64* %18, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %53, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load i8*, i8** %16, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %63 = load i64, i64* %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %18, align 8
  %68 = call i64 @memcmp(i8* %61, i64 %66, i64 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %81

71:                                               ; preds = %60, %52
  %72 = load i64, i64* %18, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %16, align 8
  br label %34

75:                                               ; preds = %34
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %15, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %15, align 8
  br label %21

79:                                               ; preds = %21
  %80 = load i32, i32* @SSL_TLSEXT_ERR_NOACK, align 4
  store i32 %80, i32* %7, align 4
  br label %97

81:                                               ; preds = %70
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %83 = load i64, i64* %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load i8**, i8*** %9, align 8
  store i8* %87, i8** %88, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %90 = load i64, i64* %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i8
  %95 = load i8*, i8** %10, align 8
  store i8 %94, i8* %95, align 1
  %96 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %81, %79, %50
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i64 @memcmp(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
