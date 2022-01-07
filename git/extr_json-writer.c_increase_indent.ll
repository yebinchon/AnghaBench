; ModuleID = '/home/carl/AnghaBench/git/extr_json-writer.c_increase_indent.c'
source_filename = "/home/carl/AnghaBench/git/extr_json-writer.c_increase_indent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.json_writer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.json_writer*, i32)* @increase_indent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @increase_indent(%struct.strbuf* %0, %struct.json_writer* %1, i32 %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.json_writer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.json_writer* %1, %struct.json_writer** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %10 = call i32 @strbuf_reset(%struct.strbuf* %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %38, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.json_writer*, %struct.json_writer** %5, align 8
  %14 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %11
  %19 = load %struct.json_writer*, %struct.json_writer** %5, align 8
  %20 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %8, align 1
  %27 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %28 = load i8, i8* %8, align 1
  %29 = call i32 @strbuf_addch(%struct.strbuf* %27, i8 signext %28)
  %30 = load i8, i8* %8, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @strbuf_addchars(%struct.strbuf* %34, i8 signext 32, i32 %35)
  br label %37

37:                                               ; preds = %33, %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %11

41:                                               ; preds = %11
  ret void
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addchars(%struct.strbuf*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
