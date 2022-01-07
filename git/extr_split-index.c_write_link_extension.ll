; ModuleID = '/home/carl/AnghaBench/git/extr_split-index.c_write_link_extension.c'
source_filename = "/home/carl/AnghaBench/git/extr_split-index.c_write_link_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.strbuf = type { i32 }
%struct.index_state = type { %struct.split_index* }
%struct.split_index = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_link_extension(%struct.strbuf* %0, %struct.index_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.split_index*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.index_state* %1, %struct.index_state** %5, align 8
  %7 = load %struct.index_state*, %struct.index_state** %5, align 8
  %8 = getelementptr inbounds %struct.index_state, %struct.index_state* %7, i32 0, i32 0
  %9 = load %struct.split_index*, %struct.split_index** %8, align 8
  store %struct.split_index* %9, %struct.split_index** %6, align 8
  %10 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %11 = load %struct.split_index*, %struct.split_index** %6, align 8
  %12 = getelementptr inbounds %struct.split_index, %struct.split_index* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strbuf_add(%struct.strbuf* %10, i32 %14, i32 %17)
  %19 = load %struct.split_index*, %struct.split_index** %6, align 8
  %20 = getelementptr inbounds %struct.split_index, %struct.split_index* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.split_index*, %struct.split_index** %6, align 8
  %25 = getelementptr inbounds %struct.split_index, %struct.split_index* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %40

29:                                               ; preds = %23, %2
  %30 = load %struct.split_index*, %struct.split_index** %6, align 8
  %31 = getelementptr inbounds %struct.split_index, %struct.split_index* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %34 = call i32 @ewah_serialize_strbuf(i32 %32, %struct.strbuf* %33)
  %35 = load %struct.split_index*, %struct.split_index** %6, align 8
  %36 = getelementptr inbounds %struct.split_index, %struct.split_index* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %39 = call i32 @ewah_serialize_strbuf(i32 %37, %struct.strbuf* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %29, %28
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @strbuf_add(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @ewah_serialize_strbuf(i32, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
