; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_find_sfe_ipv4_connection_match.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_find_sfe_ipv4_connection_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4_connection_match = type { i64, i64, i64, i64, i64, %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match*, %struct.net_device* }
%struct.sfe_ipv4 = type { i32, %struct.sfe_ipv4_connection_match**, i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sfe_ipv4_connection_match* (%struct.sfe_ipv4*, %struct.net_device*, i64, i64, i64, i64, i64)* @sfe_ipv4_find_sfe_ipv4_connection_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sfe_ipv4_connection_match* @sfe_ipv4_find_sfe_ipv4_connection_match(%struct.sfe_ipv4* %0, %struct.net_device* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.sfe_ipv4_connection_match*, align 8
  %9 = alloca %struct.sfe_ipv4*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sfe_ipv4_connection_match*, align 8
  %17 = alloca %struct.sfe_ipv4_connection_match*, align 8
  %18 = alloca i32, align 4
  store %struct.sfe_ipv4* %0, %struct.sfe_ipv4** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* %15, align 8
  %25 = call i32 @sfe_ipv4_get_connection_match_hash(%struct.net_device* %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24)
  store i32 %25, i32* %18, align 4
  %26 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %9, align 8
  %27 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %26, i32 0, i32 1
  %28 = load %struct.sfe_ipv4_connection_match**, %struct.sfe_ipv4_connection_match*** %27, align 8
  %29 = load i32, i32* %18, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %28, i64 %30
  %32 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %31, align 8
  store %struct.sfe_ipv4_connection_match* %32, %struct.sfe_ipv4_connection_match** %16, align 8
  %33 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %34 = icmp ne %struct.sfe_ipv4_connection_match* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %7
  store %struct.sfe_ipv4_connection_match* null, %struct.sfe_ipv4_connection_match** %8, align 8
  br label %180

40:                                               ; preds = %7
  %41 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %42 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %40
  %47 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %48 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %15, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %46
  %53 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %54 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %52
  %59 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %60 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %66 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %72 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %71, i32 0, i32 7
  %73 = load %struct.net_device*, %struct.net_device** %72, align 8
  %74 = load %struct.net_device*, %struct.net_device** %10, align 8
  %75 = icmp eq %struct.net_device* %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %9, align 8
  %78 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  store %struct.sfe_ipv4_connection_match* %81, %struct.sfe_ipv4_connection_match** %8, align 8
  br label %180

82:                                               ; preds = %70, %64, %58, %52, %46, %40
  %83 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  store %struct.sfe_ipv4_connection_match* %83, %struct.sfe_ipv4_connection_match** %17, align 8
  br label %84

84:                                               ; preds = %129, %82
  %85 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %86 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %85, i32 0, i32 6
  %87 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %86, align 8
  store %struct.sfe_ipv4_connection_match* %87, %struct.sfe_ipv4_connection_match** %16, align 8
  br label %88

88:                                               ; preds = %84
  %89 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %90 = icmp ne %struct.sfe_ipv4_connection_match* %89, null
  br i1 %90, label %91, label %129

91:                                               ; preds = %88
  %92 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %93 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %13, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %127, label %97

97:                                               ; preds = %91
  %98 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %99 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %15, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %127, label %103

103:                                              ; preds = %97
  %104 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %105 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %12, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %127, label %109

109:                                              ; preds = %103
  %110 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %111 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %14, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %127, label %115

115:                                              ; preds = %109
  %116 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %117 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %11, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %123 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %122, i32 0, i32 7
  %124 = load %struct.net_device*, %struct.net_device** %123, align 8
  %125 = load %struct.net_device*, %struct.net_device** %10, align 8
  %126 = icmp ne %struct.net_device* %124, %125
  br label %127

127:                                              ; preds = %121, %115, %109, %103, %97, %91
  %128 = phi i1 [ true, %115 ], [ true, %109 ], [ true, %103 ], [ true, %97 ], [ true, %91 ], [ %126, %121 ]
  br label %129

129:                                              ; preds = %127, %88
  %130 = phi i1 [ false, %88 ], [ %128, %127 ]
  br i1 %130, label %84, label %131

131:                                              ; preds = %129
  %132 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %133 = icmp ne %struct.sfe_ipv4_connection_match* %132, null
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store %struct.sfe_ipv4_connection_match* null, %struct.sfe_ipv4_connection_match** %8, align 8
  br label %180

139:                                              ; preds = %131
  %140 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %141 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %140, i32 0, i32 6
  %142 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %141, align 8
  %143 = icmp ne %struct.sfe_ipv4_connection_match* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %146 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %145, i32 0, i32 5
  %147 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %146, align 8
  %148 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %149 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %148, i32 0, i32 6
  %150 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %149, align 8
  %151 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %150, i32 0, i32 5
  store %struct.sfe_ipv4_connection_match* %147, %struct.sfe_ipv4_connection_match** %151, align 8
  br label %152

152:                                              ; preds = %144, %139
  %153 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %154 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %153, i32 0, i32 6
  %155 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %154, align 8
  %156 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %157 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %156, i32 0, i32 5
  %158 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %157, align 8
  %159 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %158, i32 0, i32 6
  store %struct.sfe_ipv4_connection_match* %155, %struct.sfe_ipv4_connection_match** %159, align 8
  %160 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %161 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %160, i32 0, i32 5
  store %struct.sfe_ipv4_connection_match* null, %struct.sfe_ipv4_connection_match** %161, align 8
  %162 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %17, align 8
  %163 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %164 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %163, i32 0, i32 6
  store %struct.sfe_ipv4_connection_match* %162, %struct.sfe_ipv4_connection_match** %164, align 8
  %165 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %166 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %17, align 8
  %167 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %166, i32 0, i32 5
  store %struct.sfe_ipv4_connection_match* %165, %struct.sfe_ipv4_connection_match** %167, align 8
  %168 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  %169 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %9, align 8
  %170 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %169, i32 0, i32 1
  %171 = load %struct.sfe_ipv4_connection_match**, %struct.sfe_ipv4_connection_match*** %170, align 8
  %172 = load i32, i32* %18, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %171, i64 %173
  store %struct.sfe_ipv4_connection_match* %168, %struct.sfe_ipv4_connection_match** %174, align 8
  %175 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %9, align 8
  %176 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  %179 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %16, align 8
  store %struct.sfe_ipv4_connection_match* %179, %struct.sfe_ipv4_connection_match** %8, align 8
  br label %180

180:                                              ; preds = %152, %138, %76, %39
  %181 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %8, align 8
  ret %struct.sfe_ipv4_connection_match* %181
}

declare dso_local i32 @sfe_ipv4_get_connection_match_hash(%struct.net_device*, i64, i64, i64, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
