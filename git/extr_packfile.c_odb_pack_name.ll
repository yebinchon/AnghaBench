; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_odb_pack_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_odb_pack_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }

@.str = private unnamed_addr constant [19 x i8] c"%s/pack/pack-%s.%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @odb_pack_name(%struct.strbuf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %8 = call i32 @strbuf_reset(%struct.strbuf* %7)
  %9 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %10 = call i32 (...) @get_object_directory()
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @hash_to_hex(i8* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i8* %13)
  %15 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  ret i8* %17
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32, i8*) #1

declare dso_local i32 @get_object_directory(...) #1

declare dso_local i32 @hash_to_hex(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
