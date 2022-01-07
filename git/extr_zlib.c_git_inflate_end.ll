; ModuleID = '/home/carl/AnghaBench/git/extr_zlib.c_git_inflate_end.c'
source_filename = "/home/carl/AnghaBench/git/extr_zlib.c_git_inflate_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@Z_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"inflateEnd: %s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"no message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_inflate_end(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = call i32 @zlib_pre_call(%struct.TYPE_6__* %4)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = call i32 @inflateEnd(%struct.TYPE_7__* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = call i32 @zlib_post_call(%struct.TYPE_6__* %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @Z_OK, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %32

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @zerr_to_string(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  br label %29

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i8* [ %27, %23 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %28 ]
  %31 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %30)
  br label %32

32:                                               ; preds = %29, %14
  ret void
}

declare dso_local i32 @zlib_pre_call(%struct.TYPE_6__*) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_7__*) #1

declare dso_local i32 @zlib_post_call(%struct.TYPE_6__*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @zerr_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
