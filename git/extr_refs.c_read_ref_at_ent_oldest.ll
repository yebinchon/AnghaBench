; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_read_ref_at_ent_oldest.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_read_ref_at_ent_oldest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.read_ref_at_cb = type { i32*, i32, i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, i8*, i32, i32, i8*, i8*)* @read_ref_at_ent_oldest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ref_at_ent_oldest(%struct.object_id* %0, %struct.object_id* %1, i8* %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.read_ref_at_cb*, align 8
  store %struct.object_id* %0, %struct.object_id** %8, align 8
  store %struct.object_id* %1, %struct.object_id** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load i8*, i8** %14, align 8
  %17 = bitcast i8* %16 to %struct.read_ref_at_cb*
  store %struct.read_ref_at_cb* %17, %struct.read_ref_at_cb** %15, align 8
  %18 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %15, align 8
  %19 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %7
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 @xstrdup(i8* %23)
  %25 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %15, align 8
  %26 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %7
  %29 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %15, align 8
  %30 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %15, align 8
  %36 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %15, align 8
  %40 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %15, align 8
  %46 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %15, align 8
  %50 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %15, align 8
  %55 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %15, align 8
  %58 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %48
  %61 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %15, align 8
  %62 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.object_id*, %struct.object_id** %8, align 8
  %65 = call i32 @oidcpy(i32 %63, %struct.object_id* %64)
  %66 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %15, align 8
  %67 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @is_null_oid(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %15, align 8
  %73 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.object_id*, %struct.object_id** %9, align 8
  %76 = call i32 @oidcpy(i32 %74, %struct.object_id* %75)
  br label %77

77:                                               ; preds = %71, %60
  ret i32 1
}

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @oidcpy(i32, %struct.object_id*) #1

declare dso_local i64 @is_null_oid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
