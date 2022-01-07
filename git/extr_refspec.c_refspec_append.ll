; ModuleID = '/home/carl/AnghaBench/git/extr_refspec.c_refspec_append.c'
source_filename = "/home/carl/AnghaBench/git/extr_refspec.c_refspec_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refspec = type { i64, %struct.refspec_item*, i32, i64, %struct.refspec_item*, i32, i32 }
%struct.refspec_item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @refspec_append(%struct.refspec* %0, i8* %1) #0 {
  %3 = alloca %struct.refspec*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.refspec_item, align 4
  %6 = alloca %struct.refspec_item, align 4
  store %struct.refspec* %0, %struct.refspec** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.refspec*, %struct.refspec** %3, align 8
  %9 = getelementptr inbounds %struct.refspec, %struct.refspec* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @refspec_item_init_or_die(%struct.refspec_item* %5, i8* %7, i32 %10)
  %12 = load %struct.refspec*, %struct.refspec** %3, align 8
  %13 = getelementptr inbounds %struct.refspec, %struct.refspec* %12, i32 0, i32 4
  %14 = load %struct.refspec_item*, %struct.refspec_item** %13, align 8
  %15 = load %struct.refspec*, %struct.refspec** %3, align 8
  %16 = getelementptr inbounds %struct.refspec, %struct.refspec* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = load %struct.refspec*, %struct.refspec** %3, align 8
  %20 = getelementptr inbounds %struct.refspec, %struct.refspec* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ALLOC_GROW(%struct.refspec_item* %14, i64 %18, i32 %21)
  %23 = load %struct.refspec*, %struct.refspec** %3, align 8
  %24 = getelementptr inbounds %struct.refspec, %struct.refspec* %23, i32 0, i32 4
  %25 = load %struct.refspec_item*, %struct.refspec_item** %24, align 8
  %26 = load %struct.refspec*, %struct.refspec** %3, align 8
  %27 = getelementptr inbounds %struct.refspec, %struct.refspec* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %25, i64 %28
  %31 = bitcast %struct.refspec_item* %30 to i8*
  %32 = bitcast %struct.refspec_item* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.refspec*, %struct.refspec** %3, align 8
  %34 = getelementptr inbounds %struct.refspec, %struct.refspec* %33, i32 0, i32 1
  %35 = load %struct.refspec_item*, %struct.refspec_item** %34, align 8
  %36 = load %struct.refspec*, %struct.refspec** %3, align 8
  %37 = getelementptr inbounds %struct.refspec, %struct.refspec* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = load %struct.refspec*, %struct.refspec** %3, align 8
  %41 = getelementptr inbounds %struct.refspec, %struct.refspec* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ALLOC_GROW(%struct.refspec_item* %35, i64 %39, i32 %42)
  %44 = load %struct.refspec*, %struct.refspec** %3, align 8
  %45 = getelementptr inbounds %struct.refspec, %struct.refspec* %44, i32 0, i32 1
  %46 = load %struct.refspec_item*, %struct.refspec_item** %45, align 8
  %47 = load %struct.refspec*, %struct.refspec** %3, align 8
  %48 = getelementptr inbounds %struct.refspec, %struct.refspec* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %46, i64 %49
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @xstrdup(i8* %52)
  %54 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %6, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = bitcast %struct.refspec_item* %51 to i8*
  %56 = bitcast %struct.refspec_item* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 4, i1 false)
  ret void
}

declare dso_local i32 @refspec_item_init_or_die(%struct.refspec_item*, i8*, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.refspec_item*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
