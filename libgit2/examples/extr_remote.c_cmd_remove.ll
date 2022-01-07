; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_remote.c_cmd_remove.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_remote.c_cmd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opts = type { i32, i8** }

@.str = private unnamed_addr constant [27 x i8] c"you need to specify a name\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not delete remote\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.opts*)* @cmd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_remove(i32* %0, %struct.opts* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.opts* %1, %struct.opts** %4, align 8
  %6 = load %struct.opts*, %struct.opts** %4, align 8
  %7 = getelementptr inbounds %struct.opts, %struct.opts* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @usage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.opts*, %struct.opts** %4, align 8
  %14 = getelementptr inbounds %struct.opts, %struct.opts* %13, i32 0, i32 1
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @git_remote_delete(i32* %18, i8* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @check_lg2(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  ret i32 0
}

declare dso_local i32 @usage(i8*, i32*) #1

declare dso_local i32 @check_lg2(i32, i8*, i8*) #1

declare dso_local i32 @git_remote_delete(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
