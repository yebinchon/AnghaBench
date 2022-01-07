; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_fill_loose_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_fill_loose_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i32 }
%struct.object_id = type { i32* }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@fill_loose_path.hex = internal global [17 x i8] c"0123456789abcdef\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.object_id*)* @fill_loose_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_loose_path(%struct.strbuf* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %41, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %7
  %14 = load %struct.object_id*, %struct.object_id** %4, align 8
  %15 = getelementptr inbounds %struct.object_id, %struct.object_id* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = lshr i32 %22, 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [17 x i8], [17 x i8]* @fill_loose_path.hex, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @strbuf_addch(%struct.strbuf* %21, i8 signext %26)
  %28 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 15
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [17 x i8], [17 x i8]* @fill_loose_path.hex, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @strbuf_addch(%struct.strbuf* %28, i8 signext %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %13
  %38 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %39 = call i32 @strbuf_addch(%struct.strbuf* %38, i8 signext 47)
  br label %40

40:                                               ; preds = %37, %13
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %7

44:                                               ; preds = %7
  ret void
}

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
