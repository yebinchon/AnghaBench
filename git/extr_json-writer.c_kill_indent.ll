; ModuleID = '/home/carl/AnghaBench/git/extr_json-writer.c_kill_indent.c'
source_filename = "/home/carl/AnghaBench/git/extr_json-writer.c_kill_indent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.json_writer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.json_writer*)* @kill_indent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_indent(%struct.strbuf* %0, %struct.json_writer* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.json_writer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.json_writer* %1, %struct.json_writer** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %9 = call i32 @strbuf_reset(%struct.strbuf* %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %42, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.json_writer*, %struct.json_writer** %4, align 8
  %13 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %10
  %18 = load %struct.json_writer*, %struct.json_writer** %4, align 8
  %19 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %7, align 1
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load i8, i8* %7, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %42

33:                                               ; preds = %28, %17
  %34 = load i8, i8* %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %42

38:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  %39 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %40 = load i8, i8* %7, align 1
  %41 = call i32 @strbuf_addch(%struct.strbuf* %39, i8 signext %40)
  br label %42

42:                                               ; preds = %38, %37, %32
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %10

45:                                               ; preds = %10
  ret void
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
