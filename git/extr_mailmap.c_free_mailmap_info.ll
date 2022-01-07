; ModuleID = '/home/carl/AnghaBench/git/extr_mailmap.c_free_mailmap_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailmap.c_free_mailmap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailmap_info = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"mailmap: -- complex: '%s' -> '%s' <%s>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @free_mailmap_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_mailmap_info(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mailmap_info*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.mailmap_info*
  store %struct.mailmap_info* %7, %struct.mailmap_info** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.mailmap_info*, %struct.mailmap_info** %5, align 8
  %10 = getelementptr inbounds %struct.mailmap_info, %struct.mailmap_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @debug_str(i32 %11)
  %13 = load %struct.mailmap_info*, %struct.mailmap_info** %5, align 8
  %14 = getelementptr inbounds %struct.mailmap_info, %struct.mailmap_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @debug_str(i32 %15)
  %17 = call i32 @debug_mm(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %12, i32 %16)
  %18 = load %struct.mailmap_info*, %struct.mailmap_info** %5, align 8
  %19 = getelementptr inbounds %struct.mailmap_info, %struct.mailmap_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @free(i32 %20)
  %22 = load %struct.mailmap_info*, %struct.mailmap_info** %5, align 8
  %23 = getelementptr inbounds %struct.mailmap_info, %struct.mailmap_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @free(i32 %24)
  ret void
}

declare dso_local i32 @debug_mm(i8*, i8*, i32, i32) #1

declare dso_local i32 @debug_str(i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
