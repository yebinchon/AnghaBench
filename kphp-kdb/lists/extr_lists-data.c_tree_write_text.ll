; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_tree_write_text.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_tree_write_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.tree_payload = type { i64 }

@OTree = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tree_write_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_write_text(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.tree_payload*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.tree_payload* @LPAYLOAD(i32* %6)
  store %struct.tree_payload* %7, %struct.tree_payload** %3, align 8
  %8 = load %struct.tree_payload*, %struct.tree_payload** %3, align 8
  %9 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.tree_payload*, %struct.tree_payload** %3, align 8
  %14 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @get_text_len(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.tree_payload*, %struct.tree_payload** %3, align 8
  %18 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @get_text_ptr(i64 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @writeout(i8* %20, i32 %21)
  br label %32

23:                                               ; preds = %1
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OTree, i32 0, i32 0), align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call i64 @NODE_RPOS(i32* %25)
  %27 = sub nsw i64 %24, %26
  %28 = call i8* @metafile_get_text(i64 %27, i32* %4)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @writeout(i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %12
  ret i32 0
}

declare dso_local %struct.tree_payload* @LPAYLOAD(i32*) #1

declare dso_local i32 @get_text_len(i64) #1

declare dso_local i32 @writeout(i8*, i32) #1

declare dso_local i8* @get_text_ptr(i64) #1

declare dso_local i8* @metafile_get_text(i64, i32*) #1

declare dso_local i64 @NODE_RPOS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
