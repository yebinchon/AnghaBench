; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tluni_check_nat_var.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tluni_check_nat_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type opaque

@TLUNI_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tluni_check_nat_var(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.tl_tree**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.tl_tree** %3, %struct.tl_tree*** %9, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %13, i8*** %6, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* %10, align 8
  %16 = load i8**, i8*** %7, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 -1
  store i8** %17, i8*** %7, align 8
  %18 = call i64 @var_nat_const_to_int(i8** %17)
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %6, align 8
  %21 = load i8*, i8** %19, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = add nsw i64 %18, %22
  %24 = call i8* @int_to_var_nat_const(i64 %23)
  store i8* %24, i8** %11, align 8
  %25 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %25, i64 %26
  %28 = load %struct.tl_tree*, %struct.tl_tree** %27, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = bitcast i8* %29 to %struct.tl_tree*
  %31 = icmp ne %struct.tl_tree* %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @DEC_REF(i8* %33)
  store i8* null, i8** %5, align 8
  br label %39

35:                                               ; preds = %4
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @DEC_REF(i8* %36)
  %38 = load i32, i32* @TLUNI_NEXT, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i8*, i8** %5, align 8
  ret i8* %40
}

declare dso_local i8* @int_to_var_nat_const(i64) #1

declare dso_local i64 @var_nat_const_to_int(i8**) #1

declare dso_local i32 @DEC_REF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
