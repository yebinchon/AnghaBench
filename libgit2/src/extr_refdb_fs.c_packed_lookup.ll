; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_packed_lookup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_packed_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.packref = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_4__*, i8*)* @packed_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packed_lookup(i32** %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.packref*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = call i32 @packed_reload(%struct.TYPE_4__* %10)
  store i32 %11, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %52

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @git_sortedcache_rlock(i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %52

22:                                               ; preds = %15
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call %struct.packref* @git_sortedcache_lookup(i32 %25, i8* %26)
  store %struct.packref* %27, %struct.packref** %9, align 8
  %28 = load %struct.packref*, %struct.packref** %9, align 8
  %29 = icmp ne %struct.packref* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @ref_error_notfound(i8* %31)
  store i32 %32, i32* %8, align 4
  br label %46

33:                                               ; preds = %22
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.packref*, %struct.packref** %9, align 8
  %36 = getelementptr inbounds %struct.packref, %struct.packref* %35, i32 0, i32 1
  %37 = load %struct.packref*, %struct.packref** %9, align 8
  %38 = getelementptr inbounds %struct.packref, %struct.packref* %37, i32 0, i32 0
  %39 = call i32* @git_reference__alloc(i8* %34, i32* %36, i32* %38)
  %40 = load i32**, i32*** %5, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i32**, i32*** %5, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  store i32 -1, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %33
  br label %46

46:                                               ; preds = %45, %30
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @git_sortedcache_runlock(i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %21, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @packed_reload(%struct.TYPE_4__*) #1

declare dso_local i64 @git_sortedcache_rlock(i32) #1

declare dso_local %struct.packref* @git_sortedcache_lookup(i32, i8*) #1

declare dso_local i32 @ref_error_notfound(i8*) #1

declare dso_local i32* @git_reference__alloc(i8*, i32*, i32*) #1

declare dso_local i32 @git_sortedcache_runlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
