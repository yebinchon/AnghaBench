; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_fetch_string.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_fetch_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8* }
%struct.tl_tree = type { i32 }

@IS_STRING = common dso_local global i32 0, align 4
@TLUNI_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tlcomb_fetch_string(i8** %0, i8** %1, %struct.TYPE_8__** %2, %struct.tl_tree** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca %struct.tl_tree**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %8, align 8
  store %struct.tl_tree** %3, %struct.tl_tree*** %9, align 8
  %12 = call i32 @tl_eparse_string(i8** %10)
  store i32 %12, i32* %11, align 4
  %13 = call i64 (...) @tl_parse_error()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %37

16:                                               ; preds = %4
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = call i32 @MAKE_STD_ZVAL(%struct.TYPE_8__* %18)
  %20 = load i32, i32* @IS_STRING, align 4
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i8* %30, i8** %35, align 8
  %36 = load i32, i32* @TLUNI_NEXT, align 4
  br label %37

37:                                               ; preds = %16, %15
  %38 = load i8*, i8** %5, align 8
  ret i8* %38
}

declare dso_local i32 @tl_eparse_string(i8**) #1

declare dso_local i64 @tl_parse_error(...) #1

declare dso_local i32 @MAKE_STD_ZVAL(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
