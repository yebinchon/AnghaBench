; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers_util.c_extract_name_value.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers_util.c_extract_name_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__**, %struct.TYPE_7__*)* @extract_name_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_name_value(i8* %0, %struct.TYPE_7__** %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca %struct.TYPE_7__, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 58)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %50

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %25 = call i64 @extract_name(i8* %17, i32 %23, %struct.TYPE_7__** %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %50

28:                                               ; preds = %16
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i32 @strlen(i8* %33)
  %35 = call i64 @h2o_str_stripws(i8* %31, i32 %34)
  %36 = bitcast %struct.TYPE_7__* %9 to i64*
  store i64 %35, i64* %36, align 4
  %37 = bitcast %struct.TYPE_7__* %29 to i8*
  %38 = bitcast %struct.TYPE_7__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 8, i1 false)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @h2o_strdup(i32* null, i32 %42, i32 %45)
  %47 = bitcast %struct.TYPE_7__* %10 to i64*
  store i64 %46, i64* %47, align 4
  %48 = bitcast %struct.TYPE_7__* %39 to i8*
  %49 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %28, %27, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @extract_name(i8*, i32, %struct.TYPE_7__**) #1

declare dso_local i64 @h2o_str_stripws(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @h2o_strdup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
