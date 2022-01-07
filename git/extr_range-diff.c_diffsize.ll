; ModuleID = '/home/carl/AnghaBench/git/extr_range-diff.c_diffsize.c'
source_filename = "/home/carl/AnghaBench/git/extr_range-diff.c_diffsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8*, i8* }

@diffsize_hunk = common dso_local global i32 0, align 4
@diffsize_consume = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to generate diff\00", align 1
@COST_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @diffsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diffsize(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strlen(i8* %15)
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @strlen(i8* %20)
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 3, i32* %23, align 4
  %24 = load i32, i32* @diffsize_hunk, align 4
  %25 = load i32, i32* @diffsize_consume, align 4
  %26 = call i32 @xdi_diff_outf(%struct.TYPE_10__* %8, %struct.TYPE_10__* %9, i32 %24, i32 %25, i32* %10, %struct.TYPE_8__* %6, %struct.TYPE_9__* %7)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %2
  %31 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @error(i32 %31)
  %33 = load i32, i32* @COST_MAX, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %28
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strlen(i8*) #2

declare dso_local i32 @xdi_diff_outf(%struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_9__*) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
