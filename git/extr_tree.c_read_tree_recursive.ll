; ModuleID = '/home/carl/AnghaBench/git/extr_tree.c_read_tree_recursive.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree.c_read_tree_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.tree = type { i32 }
%struct.pathspec = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_tree_recursive(%struct.repository* %0, %struct.tree* %1, i8* %2, i32 %3, i32 %4, %struct.pathspec* %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.repository*, align 8
  %10 = alloca %struct.tree*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pathspec*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.strbuf, align 4
  %18 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %9, align 8
  store %struct.tree* %1, %struct.tree** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.pathspec* %5, %struct.pathspec** %14, align 8
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %19 = bitcast %struct.strbuf* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %20 = load i8*, i8** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @strbuf_add(%struct.strbuf* %17, i8* %20, i32 %21)
  %23 = load %struct.repository*, %struct.repository** %9, align 8
  %24 = load %struct.tree*, %struct.tree** %10, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.pathspec*, %struct.pathspec** %14, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load i8*, i8** %16, align 8
  %29 = call i32 @read_tree_1(%struct.repository* %23, %struct.tree* %24, %struct.strbuf* %17, i32 %25, %struct.pathspec* %26, i32 %27, i8* %28)
  store i32 %29, i32* %18, align 4
  %30 = call i32 @strbuf_release(%struct.strbuf* %17)
  %31 = load i32, i32* %18, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @read_tree_1(%struct.repository*, %struct.tree*, %struct.strbuf*, i32, %struct.pathspec*, i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
