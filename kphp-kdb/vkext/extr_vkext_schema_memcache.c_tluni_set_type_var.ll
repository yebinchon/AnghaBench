; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tluni_set_type_var.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tluni_set_type_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }

@TLUNI_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tluni_set_type_var(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.tl_tree**, align 8
  %10 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.tl_tree** %3, %struct.tl_tree*** %9, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %12, i8*** %6, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %10, align 8
  %15 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %15, i64 %16
  %18 = load %struct.tl_tree*, %struct.tl_tree** %17, align 8
  %19 = icmp ne %struct.tl_tree* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %21, i64 %22
  %24 = load %struct.tl_tree*, %struct.tl_tree** %23, align 8
  %25 = call i32 @DEC_REF(%struct.tl_tree* %24)
  br label %26

26:                                               ; preds = %20, %4
  %27 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %27, i64 %28
  store %struct.tl_tree* null, %struct.tl_tree** %29, align 8
  %30 = load i8**, i8*** %7, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 -1
  store i8** %31, i8*** %7, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.tl_tree*
  %34 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %34, i64 %35
  store %struct.tl_tree* %33, %struct.tl_tree** %36, align 8
  %37 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %37, i64 %38
  %40 = load %struct.tl_tree*, %struct.tl_tree** %39, align 8
  %41 = call i64 @TL_IS_NAT_VAR(%struct.tl_tree* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  store i8* null, i8** %5, align 8
  br label %51

44:                                               ; preds = %26
  %45 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %45, i64 %46
  %48 = load %struct.tl_tree*, %struct.tl_tree** %47, align 8
  %49 = call i32 @INC_REF(%struct.tl_tree* %48)
  %50 = load i32, i32* @TLUNI_NEXT, align 4
  br label %51

51:                                               ; preds = %44, %43
  %52 = load i8*, i8** %5, align 8
  ret i8* %52
}

declare dso_local i32 @DEC_REF(%struct.tl_tree*) #1

declare dso_local i64 @TL_IS_NAT_VAR(%struct.tl_tree*) #1

declare dso_local i32 @INC_REF(%struct.tl_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
