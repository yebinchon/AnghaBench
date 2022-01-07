; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_dir.c_git__readdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_dir.c_git__readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git__dirent = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.git__dirent* @git__readdir(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.git__dirent*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.git__dirent*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i64 @git__readdir_ext(%struct.TYPE_4__* %5, i32* %7, %struct.git__dirent** %4, i32* null)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.git__dirent* null, %struct.git__dirent** %2, align 8
  br label %13

11:                                               ; preds = %1
  %12 = load %struct.git__dirent*, %struct.git__dirent** %4, align 8
  store %struct.git__dirent* %12, %struct.git__dirent** %2, align 8
  br label %13

13:                                               ; preds = %11, %10
  %14 = load %struct.git__dirent*, %struct.git__dirent** %2, align 8
  ret %struct.git__dirent* %14
}

declare dso_local i64 @git__readdir_ext(%struct.TYPE_4__*, i32*, %struct.git__dirent**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
