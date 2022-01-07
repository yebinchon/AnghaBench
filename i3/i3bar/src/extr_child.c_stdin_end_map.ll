; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_child.c_stdin_end_map.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_child.c_stdin_end_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.status_block = type { i8*, i32, i32*, i32*, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"SPEC VIOLATION: full_text is NULL!\00", align 1
@statusline_buffer = common dso_local global i32 0, align 4
@blocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @stdin_end_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stdin_end_map(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.status_block*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = call %struct.status_block* @smalloc(i32 48)
  store %struct.status_block* %8, %struct.status_block** %4, align 8
  %9 = load %struct.status_block*, %struct.status_block** %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @memcpy(%struct.status_block* %9, i32* %11, i32 48)
  %13 = load %struct.status_block*, %struct.status_block** %4, align 8
  %14 = getelementptr inbounds %struct.status_block, %struct.status_block* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = call i8* @i3string_from_utf8(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.status_block*, %struct.status_block** %4, align 8
  %21 = getelementptr inbounds %struct.status_block, %struct.status_block* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.status_block*, %struct.status_block** %4, align 8
  %24 = getelementptr inbounds %struct.status_block, %struct.status_block* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.status_block*, %struct.status_block** %4, align 8
  %32 = getelementptr inbounds %struct.status_block, %struct.status_block* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.status_block*, %struct.status_block** %4, align 8
  %37 = getelementptr inbounds %struct.status_block, %struct.status_block* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @i3string_from_utf8(i8* %38)
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.status_block*, %struct.status_block** %4, align 8
  %43 = getelementptr inbounds %struct.status_block, %struct.status_block* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @i3string_set_markup(i32* %41, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @predict_text_width(i32* %46)
  %48 = load %struct.status_block*, %struct.status_block** %4, align 8
  %49 = getelementptr inbounds %struct.status_block, %struct.status_block* %48, i32 0, i32 4
  store i64 %47, i64* %49, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @i3string_free(i32* %50)
  br label %52

52:                                               ; preds = %35, %30
  %53 = load %struct.status_block*, %struct.status_block** %4, align 8
  %54 = getelementptr inbounds %struct.status_block, %struct.status_block* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.status_block*, %struct.status_block** %4, align 8
  %57 = getelementptr inbounds %struct.status_block, %struct.status_block* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @i3string_set_markup(i32* %55, i32 %58)
  %60 = load %struct.status_block*, %struct.status_block** %4, align 8
  %61 = getelementptr inbounds %struct.status_block, %struct.status_block* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %52
  %65 = load %struct.status_block*, %struct.status_block** %4, align 8
  %66 = getelementptr inbounds %struct.status_block, %struct.status_block* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.status_block*, %struct.status_block** %4, align 8
  %69 = getelementptr inbounds %struct.status_block, %struct.status_block* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @i3string_set_markup(i32* %67, i32 %70)
  br label %72

72:                                               ; preds = %64, %52
  %73 = load %struct.status_block*, %struct.status_block** %4, align 8
  %74 = load i32, i32* @blocks, align 4
  %75 = call i32 @TAILQ_INSERT_TAIL(i32* @statusline_buffer, %struct.status_block* %73, i32 %74)
  ret i32 1
}

declare dso_local %struct.status_block* @smalloc(i32) #1

declare dso_local i32 @memcpy(%struct.status_block*, i32*, i32) #1

declare dso_local i8* @i3string_from_utf8(i8*) #1

declare dso_local i32 @i3string_set_markup(i32*, i32) #1

declare dso_local i64 @predict_text_width(i32*) #1

declare dso_local i32 @i3string_free(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.status_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
