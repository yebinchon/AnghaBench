; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_get_sane_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_get_sane_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.strbuf*, %struct.strbuf*)* @get_sane_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sane_name(%struct.strbuf* %0, %struct.strbuf* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.strbuf*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %8 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  store %struct.strbuf* %8, %struct.strbuf** %7, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %36, label %13

13:                                               ; preds = %3
  %14 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 60, %16
  br i1 %17, label %36, label %18

18:                                               ; preds = %13
  %19 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strchr(i32 %21, i8 signext 64)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strchr(i32 %27, i8 signext 60)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strchr(i32 %33, i8 signext 62)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %24, %18, %13, %3
  %37 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  store %struct.strbuf* %37, %struct.strbuf** %7, align 8
  br label %44

38:                                               ; preds = %30
  %39 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %40 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %41 = icmp eq %struct.strbuf* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %50

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %36
  %45 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %46 = call i32 @strbuf_reset(%struct.strbuf* %45)
  %47 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %48 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %49 = call i32 @strbuf_addbuf(%struct.strbuf* %47, %struct.strbuf* %48)
  br label %50

50:                                               ; preds = %44, %42
  ret void
}

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
