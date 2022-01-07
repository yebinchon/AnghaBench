; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_find_connection_match.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_find_connection_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6_connection_match = type { i64, i64, i64, %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match*, %struct.net_device*, i32, i32 }
%struct.sfe_ipv6 = type { i32, %struct.sfe_ipv6_connection_match**, i32 }
%struct.net_device = type { i32 }
%struct.sfe_ipv6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sfe_ipv6_connection_match* (%struct.sfe_ipv6*, %struct.net_device*, i64, %struct.sfe_ipv6_addr*, i64, %struct.sfe_ipv6_addr*, i64)* @sfe_ipv6_find_connection_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sfe_ipv6_connection_match* @sfe_ipv6_find_connection_match(%struct.sfe_ipv6* %0, %struct.net_device* %1, i64 %2, %struct.sfe_ipv6_addr* %3, i64 %4, %struct.sfe_ipv6_addr* %5, i64 %6) #0 {
  %8 = alloca %struct.sfe_ipv6_connection_match*, align 8
  %9 = alloca %struct.sfe_ipv6*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sfe_ipv6_addr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sfe_ipv6_addr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sfe_ipv6_connection_match*, align 8
  %17 = alloca %struct.sfe_ipv6_connection_match*, align 8
  %18 = alloca i32, align 4
  store %struct.sfe_ipv6* %0, %struct.sfe_ipv6** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.sfe_ipv6_addr* %3, %struct.sfe_ipv6_addr** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.sfe_ipv6_addr* %5, %struct.sfe_ipv6_addr** %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %12, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %14, align 8
  %24 = load i64, i64* %15, align 8
  %25 = call i32 @sfe_ipv6_get_connection_match_hash(%struct.net_device* %19, i64 %20, %struct.sfe_ipv6_addr* %21, i64 %22, %struct.sfe_ipv6_addr* %23, i64 %24)
  store i32 %25, i32* %18, align 4
  %26 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %9, align 8
  %27 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %26, i32 0, i32 1
  %28 = load %struct.sfe_ipv6_connection_match**, %struct.sfe_ipv6_connection_match*** %27, align 8
  %29 = load i32, i32* %18, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %28, i64 %30
  %32 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %31, align 8
  store %struct.sfe_ipv6_connection_match* %32, %struct.sfe_ipv6_connection_match** %16, align 8
  %33 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %34 = icmp ne %struct.sfe_ipv6_connection_match* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %7
  store %struct.sfe_ipv6_connection_match* null, %struct.sfe_ipv6_connection_match** %8, align 8
  br label %184

40:                                               ; preds = %7
  %41 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %42 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %40
  %47 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %48 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %15, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %46
  %53 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %54 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %12, align 8
  %57 = call i64 @sfe_ipv6_addr_equal(i32 %55, %struct.sfe_ipv6_addr* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %52
  %60 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %61 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %14, align 8
  %64 = call i64 @sfe_ipv6_addr_equal(i32 %62, %struct.sfe_ipv6_addr* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %68 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %74 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %73, i32 0, i32 5
  %75 = load %struct.net_device*, %struct.net_device** %74, align 8
  %76 = load %struct.net_device*, %struct.net_device** %10, align 8
  %77 = icmp eq %struct.net_device* %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %9, align 8
  %80 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  store %struct.sfe_ipv6_connection_match* %83, %struct.sfe_ipv6_connection_match** %8, align 8
  br label %184

84:                                               ; preds = %72, %66, %59, %52, %46, %40
  %85 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  store %struct.sfe_ipv6_connection_match* %85, %struct.sfe_ipv6_connection_match** %17, align 8
  br label %86

86:                                               ; preds = %133, %84
  %87 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %88 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %87, i32 0, i32 4
  %89 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %88, align 8
  store %struct.sfe_ipv6_connection_match* %89, %struct.sfe_ipv6_connection_match** %16, align 8
  br label %90

90:                                               ; preds = %86
  %91 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %92 = icmp ne %struct.sfe_ipv6_connection_match* %91, null
  br i1 %92, label %93, label %133

93:                                               ; preds = %90
  %94 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %95 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %13, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %131, label %99

99:                                               ; preds = %93
  %100 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %101 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %15, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %131, label %105

105:                                              ; preds = %99
  %106 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %107 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %12, align 8
  %110 = call i64 @sfe_ipv6_addr_equal(i32 %108, %struct.sfe_ipv6_addr* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %105
  %113 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %114 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %14, align 8
  %117 = call i64 @sfe_ipv6_addr_equal(i32 %115, %struct.sfe_ipv6_addr* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %121 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %11, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %127 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %126, i32 0, i32 5
  %128 = load %struct.net_device*, %struct.net_device** %127, align 8
  %129 = load %struct.net_device*, %struct.net_device** %10, align 8
  %130 = icmp ne %struct.net_device* %128, %129
  br label %131

131:                                              ; preds = %125, %119, %112, %105, %99, %93
  %132 = phi i1 [ true, %119 ], [ true, %112 ], [ true, %105 ], [ true, %99 ], [ true, %93 ], [ %130, %125 ]
  br label %133

133:                                              ; preds = %131, %90
  %134 = phi i1 [ false, %90 ], [ %132, %131 ]
  br i1 %134, label %86, label %135

135:                                              ; preds = %133
  %136 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %137 = icmp ne %struct.sfe_ipv6_connection_match* %136, null
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  store %struct.sfe_ipv6_connection_match* null, %struct.sfe_ipv6_connection_match** %8, align 8
  br label %184

143:                                              ; preds = %135
  %144 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %145 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %144, i32 0, i32 4
  %146 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %145, align 8
  %147 = icmp ne %struct.sfe_ipv6_connection_match* %146, null
  br i1 %147, label %148, label %156

148:                                              ; preds = %143
  %149 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %150 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %149, i32 0, i32 3
  %151 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %150, align 8
  %152 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %153 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %152, i32 0, i32 4
  %154 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %153, align 8
  %155 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %154, i32 0, i32 3
  store %struct.sfe_ipv6_connection_match* %151, %struct.sfe_ipv6_connection_match** %155, align 8
  br label %156

156:                                              ; preds = %148, %143
  %157 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %158 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %157, i32 0, i32 4
  %159 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %158, align 8
  %160 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %161 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %160, i32 0, i32 3
  %162 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %161, align 8
  %163 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %162, i32 0, i32 4
  store %struct.sfe_ipv6_connection_match* %159, %struct.sfe_ipv6_connection_match** %163, align 8
  %164 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %165 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %164, i32 0, i32 3
  store %struct.sfe_ipv6_connection_match* null, %struct.sfe_ipv6_connection_match** %165, align 8
  %166 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %17, align 8
  %167 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %168 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %167, i32 0, i32 4
  store %struct.sfe_ipv6_connection_match* %166, %struct.sfe_ipv6_connection_match** %168, align 8
  %169 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %170 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %17, align 8
  %171 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %170, i32 0, i32 3
  store %struct.sfe_ipv6_connection_match* %169, %struct.sfe_ipv6_connection_match** %171, align 8
  %172 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  %173 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %9, align 8
  %174 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %173, i32 0, i32 1
  %175 = load %struct.sfe_ipv6_connection_match**, %struct.sfe_ipv6_connection_match*** %174, align 8
  %176 = load i32, i32* %18, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %175, i64 %177
  store %struct.sfe_ipv6_connection_match* %172, %struct.sfe_ipv6_connection_match** %178, align 8
  %179 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %9, align 8
  %180 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  %183 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %16, align 8
  store %struct.sfe_ipv6_connection_match* %183, %struct.sfe_ipv6_connection_match** %8, align 8
  br label %184

184:                                              ; preds = %156, %142, %78, %39
  %185 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %8, align 8
  ret %struct.sfe_ipv6_connection_match* %185
}

declare dso_local i32 @sfe_ipv6_get_connection_match_hash(%struct.net_device*, i64, %struct.sfe_ipv6_addr*, i64, %struct.sfe_ipv6_addr*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sfe_ipv6_addr_equal(i32, %struct.sfe_ipv6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
