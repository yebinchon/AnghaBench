; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tluni_set_nat_var.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tluni_set_nat_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type opaque

@TLUNI_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tluni_set_nat_var(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.tl_tree**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.tl_tree** %3, %struct.tl_tree*** %9, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %14, i8*** %6, align 8
  %15 = load i8*, i8** %13, align 8
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %10, align 8
  %17 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %17, i64 %18
  %20 = load %struct.tl_tree*, %struct.tl_tree** %19, align 8
  %21 = icmp ne %struct.tl_tree* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %23, i64 %24
  %26 = load %struct.tl_tree*, %struct.tl_tree** %25, align 8
  %27 = bitcast %struct.tl_tree* %26 to i8*
  %28 = call i32 @DEC_REF(i8* %27)
  br label %29

29:                                               ; preds = %22, %4
  %30 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %30, i64 %31
  store %struct.tl_tree* null, %struct.tl_tree** %32, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 -1
  store i8** %34, i8*** %7, align 8
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 @var_nat_const_to_int(i8* %36)
  %38 = load i8**, i8*** %6, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %6, align 8
  %40 = load i8*, i8** %38, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = add nsw i64 %37, %41
  %43 = call i8* @int_to_var_nat_const(i64 %42)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i64 @var_nat_const_to_int(i8* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @DEC_REF(i8* %48)
  store i8* null, i8** %5, align 8
  br label %57

50:                                               ; preds = %29
  %51 = load i8*, i8** %12, align 8
  %52 = bitcast i8* %51 to %struct.tl_tree*
  %53 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %53, i64 %54
  store %struct.tl_tree* %52, %struct.tl_tree** %55, align 8
  %56 = load i32, i32* @TLUNI_NEXT, align 4
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i8*, i8** %5, align 8
  ret i8* %58
}

declare dso_local i32 @DEC_REF(i8*) #1

declare dso_local i8* @int_to_var_nat_const(i64) #1

declare dso_local i64 @var_nat_const_to_int(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
