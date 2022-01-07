; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_refdb_fs_backend__unlock.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_refdb_fs_backend__unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, %struct.TYPE_4__*, i32*, i8*)* @refdb_fs_backend__unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refdb_fs_backend__unlock(i32* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_4__* %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %28

21:                                               ; preds = %7
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @refdb_fs_backend__delete_tail(i32* %22, i32* %23, i32 %26, i32* null, i32* null)
  store i32 %27, i32* %16, align 4
  br label %43

28:                                               ; preds = %7
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = call i32 @refdb_fs_backend__write_tail(i32* %32, %struct.TYPE_4__* %33, i32* %34, i32 %35, i32* null, i32* null, i32* %36, i8* %37)
  store i32 %38, i32* %16, align 4
  br label %42

39:                                               ; preds = %28
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @git_filebuf_cleanup(i32* %40)
  br label %42

42:                                               ; preds = %39, %31
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32*, i32** %15, align 8
  %45 = call i32 @git__free(i32* %44)
  %46 = load i32, i32* %16, align 4
  ret i32 %46
}

declare dso_local i32 @refdb_fs_backend__delete_tail(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @refdb_fs_backend__write_tail(i32*, %struct.TYPE_4__*, i32*, i32, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @git_filebuf_cleanup(i32*) #1

declare dso_local i32 @git__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
