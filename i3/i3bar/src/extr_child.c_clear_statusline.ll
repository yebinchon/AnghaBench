; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_child.c_clear_statusline.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_child.c_clear_statusline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statusline_head = type { i32 }
%struct.status_block = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@blocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.statusline_head*, i32)* @clear_statusline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_statusline(%struct.statusline_head* %0, i32 %1) #0 {
  %3 = alloca %struct.statusline_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.status_block*, align 8
  store %struct.statusline_head* %0, %struct.statusline_head** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %49, %2
  %7 = load %struct.statusline_head*, %struct.statusline_head** %3, align 8
  %8 = call i32 @TAILQ_EMPTY(%struct.statusline_head* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %56

11:                                               ; preds = %6
  %12 = load %struct.statusline_head*, %struct.statusline_head** %3, align 8
  %13 = call %struct.status_block* @TAILQ_FIRST(%struct.statusline_head* %12)
  store %struct.status_block* %13, %struct.status_block** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %11
  %17 = load %struct.status_block*, %struct.status_block** %5, align 8
  %18 = getelementptr inbounds %struct.status_block, %struct.status_block* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @I3STRING_FREE(i32 %19)
  %21 = load %struct.status_block*, %struct.status_block** %5, align 8
  %22 = getelementptr inbounds %struct.status_block, %struct.status_block* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @I3STRING_FREE(i32 %23)
  %25 = load %struct.status_block*, %struct.status_block** %5, align 8
  %26 = getelementptr inbounds %struct.status_block, %struct.status_block* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @FREE(i32 %27)
  %29 = load %struct.status_block*, %struct.status_block** %5, align 8
  %30 = getelementptr inbounds %struct.status_block, %struct.status_block* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @FREE(i32 %31)
  %33 = load %struct.status_block*, %struct.status_block** %5, align 8
  %34 = getelementptr inbounds %struct.status_block, %struct.status_block* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @FREE(i32 %35)
  %37 = load %struct.status_block*, %struct.status_block** %5, align 8
  %38 = getelementptr inbounds %struct.status_block, %struct.status_block* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @FREE(i32 %39)
  %41 = load %struct.status_block*, %struct.status_block** %5, align 8
  %42 = getelementptr inbounds %struct.status_block, %struct.status_block* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @FREE(i32 %43)
  %45 = load %struct.status_block*, %struct.status_block** %5, align 8
  %46 = getelementptr inbounds %struct.status_block, %struct.status_block* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @FREE(i32 %47)
  br label %49

49:                                               ; preds = %16, %11
  %50 = load %struct.statusline_head*, %struct.statusline_head** %3, align 8
  %51 = load %struct.status_block*, %struct.status_block** %5, align 8
  %52 = load i32, i32* @blocks, align 4
  %53 = call i32 @TAILQ_REMOVE(%struct.statusline_head* %50, %struct.status_block* %51, i32 %52)
  %54 = load %struct.status_block*, %struct.status_block** %5, align 8
  %55 = call i32 @free(%struct.status_block* %54)
  br label %6

56:                                               ; preds = %6
  ret void
}

declare dso_local i32 @TAILQ_EMPTY(%struct.statusline_head*) #1

declare dso_local %struct.status_block* @TAILQ_FIRST(%struct.statusline_head*) #1

declare dso_local i32 @I3STRING_FREE(i32) #1

declare dso_local i32 @FREE(i32) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.statusline_head*, %struct.status_block*, i32) #1

declare dso_local i32 @free(%struct.status_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
