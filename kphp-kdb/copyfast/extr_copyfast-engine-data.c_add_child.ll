; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_add_child.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine-data.c_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.relative = type { i64, %struct.node, %struct.TYPE_8__, i64, %struct.relative*, %struct.relative* }
%struct.node = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }

@RELATIVES = common dso_local global %struct.relative zeroinitializer, align 8
@default_child = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@host = common dso_local global i32 0, align 4
@STATS = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_child(i64 %0) #0 {
  %2 = alloca %struct.node, align 4
  %3 = alloca %struct.relative*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.node* %2 to i64*
  store i64 %0, i64* %5, align 4
  %6 = call %struct.relative* @zmalloc(i32 48)
  store %struct.relative* %6, %struct.relative** %3, align 8
  %7 = load %struct.relative*, %struct.relative** getelementptr inbounds (%struct.relative, %struct.relative* @RELATIVES, i32 0, i32 5), align 8
  %8 = load %struct.relative*, %struct.relative** %3, align 8
  %9 = getelementptr inbounds %struct.relative, %struct.relative* %8, i32 0, i32 5
  store %struct.relative* %7, %struct.relative** %9, align 8
  %10 = load %struct.relative*, %struct.relative** %3, align 8
  %11 = getelementptr inbounds %struct.relative, %struct.relative* %10, i32 0, i32 4
  store %struct.relative* @RELATIVES, %struct.relative** %11, align 8
  %12 = load %struct.relative*, %struct.relative** %3, align 8
  %13 = load %struct.relative*, %struct.relative** %3, align 8
  %14 = getelementptr inbounds %struct.relative, %struct.relative* %13, i32 0, i32 4
  %15 = load %struct.relative*, %struct.relative** %14, align 8
  %16 = getelementptr inbounds %struct.relative, %struct.relative* %15, i32 0, i32 5
  store %struct.relative* %12, %struct.relative** %16, align 8
  %17 = load %struct.relative*, %struct.relative** %3, align 8
  %18 = load %struct.relative*, %struct.relative** %3, align 8
  %19 = getelementptr inbounds %struct.relative, %struct.relative* %18, i32 0, i32 5
  %20 = load %struct.relative*, %struct.relative** %19, align 8
  %21 = getelementptr inbounds %struct.relative, %struct.relative* %20, i32 0, i32 4
  store %struct.relative* %17, %struct.relative** %21, align 8
  %22 = load %struct.relative*, %struct.relative** %3, align 8
  %23 = getelementptr inbounds %struct.relative, %struct.relative* %22, i32 0, i32 1
  %24 = bitcast %struct.node* %23 to i8*
  %25 = bitcast %struct.node* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 4 %25, i64 8, i1 false)
  %26 = load %struct.relative*, %struct.relative** %3, align 8
  %27 = getelementptr inbounds %struct.relative, %struct.relative* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohl(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = bitcast i32* %4 to %struct.in_addr*
  %32 = bitcast %struct.in_addr* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.in_addr* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @default_child, i32 0, i32 1) to i8*), i8* align 4 %32, i64 4, i1 false)
  %33 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @default_child, i32 0, i32 0), align 4
  %35 = call i32 @create_target(%struct.TYPE_10__* @default_child, i32 0)
  %36 = load %struct.relative*, %struct.relative** %3, align 8
  %37 = getelementptr inbounds %struct.relative, %struct.relative* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load %struct.relative*, %struct.relative** %3, align 8
  %41 = getelementptr inbounds %struct.relative, %struct.relative* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @host, align 4
  %45 = call i64 @link_color(i32 %43, i32 %44)
  %46 = load %struct.relative*, %struct.relative** %3, align 8
  %47 = getelementptr inbounds %struct.relative, %struct.relative* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** @STATS, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.relative*, %struct.relative** %3, align 8
  %53 = getelementptr inbounds %struct.relative, %struct.relative* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** @STATS, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  ret void
}

declare dso_local %struct.relative* @zmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @create_target(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @link_color(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
