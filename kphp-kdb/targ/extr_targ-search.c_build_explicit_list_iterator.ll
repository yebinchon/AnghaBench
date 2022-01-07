; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_explicit_list_iterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_build_explicit_list_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.explicit_list_iterator = type { i32*, i32*, i32, i32 }

@explicit_list_iterator_jump_to = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_explicit_list_iterator(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.explicit_list_iterator*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (...) @build_empty_iterator()
  store i32 %10, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = call %struct.explicit_list_iterator* @zmalloc(i32 24)
  store %struct.explicit_list_iterator* %12, %struct.explicit_list_iterator** %6, align 8
  %13 = load i32, i32* @explicit_list_iterator_jump_to, align 4
  %14 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %15 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %21 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %25 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %30 = getelementptr inbounds %struct.explicit_list_iterator, %struct.explicit_list_iterator* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.explicit_list_iterator*, %struct.explicit_list_iterator** %6, align 8
  %32 = ptrtoint %struct.explicit_list_iterator* %31 to i32
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %11, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @build_empty_iterator(...) #1

declare dso_local %struct.explicit_list_iterator* @zmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
