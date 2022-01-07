; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_format_trailers_from_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_format_trailers_from_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.process_trailer_options = type { i32 }
%struct.trailer_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @format_trailers_from_commit(%struct.strbuf* %0, i8* %1, %struct.process_trailer_options* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.process_trailer_options*, align 8
  %7 = alloca %struct.trailer_info, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.process_trailer_options* %2, %struct.process_trailer_options** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %10 = call i32 @trailer_info_get(%struct.trailer_info* %7, i8* %8, %struct.process_trailer_options* %9)
  %11 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %12 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %13 = call i32 @format_trailer_info(%struct.strbuf* %11, %struct.trailer_info* %7, %struct.process_trailer_options* %12)
  %14 = call i32 @trailer_info_release(%struct.trailer_info* %7)
  ret void
}

declare dso_local i32 @trailer_info_get(%struct.trailer_info*, i8*, %struct.process_trailer_options*) #1

declare dso_local i32 @format_trailer_info(%struct.strbuf*, %struct.trailer_info*, %struct.process_trailer_options*) #1

declare dso_local i32 @trailer_info_release(%struct.trailer_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
