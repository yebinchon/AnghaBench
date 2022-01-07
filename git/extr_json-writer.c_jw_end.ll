; ModuleID = '/home/carl/AnghaBench/git/extr_json-writer.c_jw_end.c'
source_filename = "/home/carl/AnghaBench/git/extr_json-writer.c_jw_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_writer = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i8* }

@.str = private unnamed_addr constant [37 x i8] c"json-writer: too many jw_end(): '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jw_end(%struct.json_writer* %0) #0 {
  %2 = alloca %struct.json_writer*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.json_writer* %0, %struct.json_writer** %2, align 8
  %5 = load %struct.json_writer*, %struct.json_writer** %2, align 8
  %6 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.json_writer*, %struct.json_writer** %2, align 8
  %12 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.json_writer*, %struct.json_writer** %2, align 8
  %18 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  %22 = load %struct.json_writer*, %struct.json_writer** %2, align 8
  %23 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %3, align 1
  %30 = load %struct.json_writer*, %struct.json_writer** %2, align 8
  %31 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %30, i32 0, i32 3
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @strbuf_setlen(%struct.TYPE_3__* %31, i32 %32)
  %34 = load %struct.json_writer*, %struct.json_writer** %2, align 8
  %35 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.json_writer*, %struct.json_writer** %2, align 8
  %37 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %16
  %41 = load %struct.json_writer*, %struct.json_writer** %2, align 8
  %42 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %41, i32 0, i32 1
  %43 = call i32 @strbuf_addch(%struct.TYPE_4__* %42, i8 signext 10)
  %44 = load %struct.json_writer*, %struct.json_writer** %2, align 8
  %45 = call i32 @indent_pretty(%struct.json_writer* %44)
  br label %46

46:                                               ; preds = %40, %16
  %47 = load i8, i8* %3, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 123
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.json_writer*, %struct.json_writer** %2, align 8
  %52 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %51, i32 0, i32 1
  %53 = call i32 @strbuf_addch(%struct.TYPE_4__* %52, i8 signext 125)
  br label %58

54:                                               ; preds = %46
  %55 = load %struct.json_writer*, %struct.json_writer** %2, align 8
  %56 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %55, i32 0, i32 1
  %57 = call i32 @strbuf_addch(%struct.TYPE_4__* %56, i8 signext 93)
  br label %58

58:                                               ; preds = %54, %50
  ret void
}

declare dso_local i32 @BUG(i8*, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.TYPE_4__*, i8 signext) #1

declare dso_local i32 @indent_pretty(%struct.json_writer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
