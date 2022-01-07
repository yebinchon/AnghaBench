; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_odb_loose_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_odb_loose_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_directory = type { i32 }
%struct.strbuf = type { i8* }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.object_directory*, %struct.strbuf*, %struct.object_id*)* @odb_loose_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @odb_loose_path(%struct.object_directory* %0, %struct.strbuf* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.object_directory*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.object_id*, align 8
  store %struct.object_directory* %0, %struct.object_directory** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  %7 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %8 = call i32 @strbuf_reset(%struct.strbuf* %7)
  %9 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %10 = load %struct.object_directory*, %struct.object_directory** %4, align 8
  %11 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strbuf_addstr(%struct.strbuf* %9, i32 %12)
  %14 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %15 = call i32 @strbuf_addch(%struct.strbuf* %14, i8 signext 47)
  %16 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %17 = load %struct.object_id*, %struct.object_id** %6, align 8
  %18 = call i32 @fill_loose_path(%struct.strbuf* %16, %struct.object_id* %17)
  %19 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  ret i8* %21
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @fill_loose_path(%struct.strbuf*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
